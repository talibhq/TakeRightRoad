from django.shortcuts import render, redirect, get_object_or_404
from django.views import View
from django.views.generic import ListView, DetailView
from django.contrib.auth.mixins import LoginRequiredMixin
from .models import Question, Answer
from .forms import QuestionForm
from django.utils.text import slugify
from dashboard.queries import get_categories, get_tags
from django.http import JsonResponse
from django.db.models import Count

class AskQuestionView(LoginRequiredMixin, View):
	template_name = 'questions/ask_question.html'
	form = QuestionForm

	def get(self, request):
		context = {
			'form' : self.form(),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request):
		form = self.form(request.POST)
		if form.is_valid():
			question = form.save(commit=False)
			question.user = request.user
			question.slug = slugify(question.title)
			question.save()
			return redirect('profile', username=request.user.username)
		else:
			context = {
				'form' : form,
				'categories' : get_categories(),
			}
			return render(request, self.template_name, context)

class QuestionDetailsView(View):
	template_name = 'questions/question_details.html'
	def get(self, request, slug):
		question = get_object_or_404(Question, slug=slug)
		question.views += 1
		question.save()
		answers = Answer.objects.filter(question=question).select_related('user').order_by('-smiles')
		context = {
			'question' : question,
			'answers' : answers,
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

class GiveAnswerView(LoginRequiredMixin, View):
	def post(self, request, slug):
		question = get_object_or_404(Question, slug=slug)
		answer = request.POST.get('answer', '')
		if answer:
			Answer.objects.create(question=question, user=request.user, text=answer)
		return redirect('question_details', slug=slug)

class GiveSmileToAnswerView(View):
	def get(self, request, answer_id):
		answer = get_object_or_404(Answer, id=answer_id)
		total_smiles = answer.smiles
		success = False
		if request.user.is_authenticated:
			answer.smiles += 1
			answer.save()
			total_smiles = answer.smiles
			success = True
		data = {
			'success' : success,
			'total_smiles' : total_smiles,
		}
		return JsonResponse(data)

class ListQuestionView(ListView):
	queryset = Question.objects.select_related('user').annotate(count_answers=Count('answer')).order_by('-count_answers', '-timestamp')
	context_object_name = 'questions'
	template_name = 'questions/list_questions.html'
	paginate_by = 8

	def get_context_data(self, **kwargs):
		data = super().get_context_data(**kwargs)
		data['categories'] = get_categories()
		return data