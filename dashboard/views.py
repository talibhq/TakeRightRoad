from django.shortcuts import render, redirect
from django.views import View
from django.db.models import Count, Q
from django.contrib import messages
from blog.models import Blog, Category, Tag
from account.models import User
from ask_question.models import Question
from .queries import get_categories, get_tags
from .forms import UserQueryForm

def handler404(request, exception):
    return render(request, 'dashboard/404.html', status=404)

def handler500(request):
    return render(request, 'dashboard/500.html', status=500)

class HomePageView(View):
	template_name = 'dashboard/index.html'
	def get(self, request):
		popular_blogs = Blog.objects.select_related('author').order_by('-views')[:8]
		popular_authors = User.objects.filter(is_superuser=False, is_active=True).annotate(followers_count=Count('followers')).order_by('-followers_count')[:4]
		recent_blogs = Blog.objects.select_related('author').order_by('-created_on', '-views')[:4]
		photo_gallery = Blog.objects.select_related('author').order_by('-views').values('banner', 'location')[:10]
		context = {
			'popular_blogs' : popular_blogs,
			'recent_blogs' : recent_blogs,
			'photo_gallery' : photo_gallery,
			'popular_authors' : popular_authors,
			'categories' : get_categories(),
			'tags' : get_tags(),
		}
		return render(request, self.template_name, context)

class AboutUsPageView(View):
	template_name = 'dashboard/about.html'
	def get(self, request):
		context = {
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

class ContactUsPageView(View):
	template_name = 'dashboard/contact.html'
	form = UserQueryForm
	def get(self, request):
		context = {
			'categories' : get_categories(),
			'form' : self.form(),
		}
		return render(request, self.template_name, context)

	def post(self, request):
		form = self.form(request.POST)
		if form.is_valid():
			form.save()
			messages.success(request, 'Your query submited our team will reach you soon')
			return redirect('contact')
		context = {
			'categories' : get_categories(),
			'form' : form,
		}
		return render(request, self.template_name, context)

class SearchPageView(View):
	template_name = 'dashboard/search.html'
	def get(self, request):
		keyword = request.GET.get('q', '')
		search_by_blogs = Blog.objects.filter(Q(title__icontains=keyword)|Q(content__icontains=keyword)).select_related('author').order_by('-views', '-created_on')
		search_by_people = User.objects.filter(name__icontains=keyword, is_superuser=False, is_active=True).order_by('name')
		search_by_questions = Question.objects.filter(title__icontains=keyword).order_by('-timestamp')
		search_by_category = Category.objects.filter(name__icontains=keyword).order_by('name')
		search_by_tag = Tag.objects.filter(name__icontains=keyword).order_by('name')
		no_data = False
		if not search_by_blogs and not search_by_people and not search_by_questions and not search_by_category and not search_by_tag:
			no_data = True
		context = {
			'search_by_blogs' : search_by_blogs,
			'search_by_people' : search_by_people,
			'search_by_questions' : search_by_questions,
			'search_by_category' : search_by_category,
			'search_by_tag' : search_by_tag,
			'no_data' : no_data,
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)