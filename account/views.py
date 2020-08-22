from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse, Http404
from django.views import View
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib import messages

from .forms import UserSignupForm, UserLoginForm, UserUpdateProfileForm
from .models import User
from .utils import generate_unique_username
from dashboard.queries import get_categories
from blog.models import Blog
from ask_question.models import Question

class UserSignupView(View):
	template_name = 'account/signup.html'
	form = UserSignupForm

	def get(self, request):
		context = {
			'form' : self.form(),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request):
		form = self.form(request.POST, request.FILES)
		if form.is_valid():
			name = form.cleaned_data['name']
			password = form.cleaned_data['password']
			user = form.save(commit=False)
			user.set_password(password)
			user.username = generate_unique_username(name)
			user.save()
			messages.success(request, 'Your account is created please login!')
			return redirect('user_login')
		context = {
			'form' : form,
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

class UserLoginView(View):
	template_name = 'account/login.html'
	form = UserLoginForm

	def get(self, request):
		context = {
			'form' : self.form(),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request):
		form = self.form(request.POST)
		if form.is_valid():
			email = form.cleaned_data['email']
			password = form.cleaned_data['password']
			user_objects = User.objects.filter(email=email)
			if user_objects.exists():
				username = user_objects[0].username
				user = authenticate(username=username, password=password)
				if user and user.is_active:
					login(request, user)
					next_url = request.GET.get('next', '')
					if next_url:
						return redirect(next_url)
					return redirect('profile', username=user.username)
		context = {
			'form' : form,
			'error' : True,
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)
	
class UserLogoutView(LoginRequiredMixin, View):
	def get(self, request):
		logout(request)
		return redirect('index')

class UserProfileView(View):
	template_name = 'account/profile.html'
	def get(self, request, username):
		user_object = get_object_or_404(User, username=username)
		blogs = Blog.objects.filter(author=user_object).select_related('author').order_by('-created_on')
		liked_blogs = Blog.objects.filter(likes=user_object).exclude(author=user_object).select_related('author')
		questions = Question.objects.filter(user=user_object).select_related('user').order_by('-timestamp')
		is_you_follow = False
		exists = user_object.followers.filter(id=request.user.id).exists()
		if exists:
			is_you_follow = True
		context = {
			'user_object' : user_object,
			'blogs' : blogs,
			'liked_blogs' : liked_blogs,
			'questions' : questions,
			'is_you_follow' : is_you_follow,
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)
		
class UserUpdateProfileView(LoginRequiredMixin, View):
	template_name = 'account/update_profile.html'
	form = UserUpdateProfileForm
	def get(self, request, username):
		user = get_object_or_404(User, username=username)
		if user != request.user:
			raise Http404('Page not found')
		context = {
			'form' : self.form(instance=user),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request, username):
		user = get_object_or_404(User, username=username)
		if user != request.user:
			raise Http404('Page not found')
		form = self.form(request.POST, request.FILES, instance=user)
		if form.is_valid():
			form.save()
			messages.success(request, 'Your profile is updated!')
			return redirect('profile', username=user.username)
		else:
			context = {
				'form' : form,
				'categories' : get_categories(),
			}
			return render(request, self.template_name, context)

class GetFollowersView(View):
	def get(self, request, username):
		user = get_object_or_404(User, username=username)
		queryet = user.followers.filter(is_superuser=False, is_active=True).prefetch_related('followers').order_by('name')
		followers_data = []
		for user_object in queryet:
			each_user_data = {}
			each_user_data['name'] = user_object.name
			each_user_data['username'] = user_object.username
			each_user_data['profile'] = user_object.get_profile()
			each_user_data['is_you_follow'] = True if user_object.followers.filter(id=request.user.id).exists() else False
			each_user_data['show_follow_btn'] = True if request.user.is_authenticated and user_object != request.user else False
			followers_data.append(each_user_data)
		data = {
			'users_data' : followers_data,
			'title' : 'Followers',
		}
		return JsonResponse(data)

class GetFollowingView(View):
	def get(self, request, username):
		user = get_object_or_404(User, username=username)
		queryet = User.objects.filter(followers=user, is_superuser=False, is_active=True).prefetch_related('followers').order_by('name')
		following_users_data = []
		for user_object in queryet:
			each_user_data = {}
			each_user_data['name'] = user_object.name
			each_user_data['username'] = user_object.username
			each_user_data['profile'] = user_object.get_profile()
			each_user_data['is_you_follow'] = True if user_object.followers.filter(id=request.user.id).exists() else False
			each_user_data['show_follow_btn'] = True if request.user.is_authenticated and user_object != request.user else False
			following_users_data.append(each_user_data)
		data = {
			'users_data' : following_users_data,
			'title' : 'Following',
		}
		return JsonResponse(data)

class ToggleFollowView(LoginRequiredMixin, View):
	def get(self, request, username):
		user = get_object_or_404(User, username=username)
		exists = user.followers.filter(id=request.user.id).exists()
		if exists:
			user.followers.remove(request.user)
			flag = "unfollow"
		else:
			user.followers.add(request.user)
			flag = "follow"

		data = {
			'flag' : flag,
			'requested_user_followers' : user.count_followers(),
			'requested_user_following' : user.count_following(),
			'authenticated_user_followers' : request.user.count_followers(),
			'authenticated_user_following' : request.user.count_following(),
		}
		return JsonResponse(data)