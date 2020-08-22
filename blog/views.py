from django.shortcuts import render, redirect, get_object_or_404
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.utils.text import slugify
from django.http import JsonResponse, Http404
from django.contrib import messages

from account.models import User
from .models import Blog, Category, Tag, BlogComment
from .forms import BlogForm
from dashboard.queries import get_categories, get_tags

class WriteBlogView(LoginRequiredMixin, View):
	template_name = 'blog/write_blog.html'
	form = BlogForm
	def get(self, request):
		context = {
			'form' : self.form(),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request):
		form = self.form(request.POST, request.FILES)
		if form.is_valid():
			blog = form.save(commit=False)
			blog.author = request.user
			blog.slug = slugify(blog.title)
			blog.save()
			form.save_m2m()
			messages.success(request, 'Your blog is published!')
			return redirect('profile', username=request.user.username)
		else:
			context = {
				'form' : form,
				'categories' : get_categories(),
			}
			return render(request, self.template_name, context)

class SingleBlogView(View):
	template_name = 'blog/single_blog.html'
	def get(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		blog.views += 1
		blog.save()
		related_blogs = Blog.objects.filter(author=blog.author).exclude(id=blog.id).select_related('author').order_by('-views', '-created_on')
		is_you_like = True if blog.likes.filter(id=request.user.id).exists() else False
		comments = BlogComment.objects.filter(blog=blog).select_related('user').order_by('-created_on')
		blog_tags = blog.tags.all().order_by('name').values('name', 'slug')
		context = {
			'blog' : blog,
			'blog_tags' : blog_tags,
			'comments' : comments,
			'related_blogs' : related_blogs,
			'is_you_like' : is_you_like,
			'categories' : get_categories(),
			'tags' : get_tags(),			
		}
		return render(request, self.template_name, context)

class EditBlogView(LoginRequiredMixin, View):
	template_name = 'blog/edit_blog.html'
	form = BlogForm
	def get(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		if blog.author != request.user:
			raise Http404('Page not found')
		context = {
			'blog' : blog,
			'form' : self.form(instance=blog),
			'categories' : get_categories(),
		}
		return render(request, self.template_name, context)

	def post(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		if blog.author != request.user:
			raise Http404('Page not found')
		form = self.form(request.POST, request.FILES, instance=blog)
		if form.is_valid():
			form.save()
			messages.success(request, 'Your blog is updated!')
			return redirect('single_blog', slug=slug)
		else:
			context = {
				'blog' : blog,
				'form' : form,
				'categories' : get_categories(),
			}
			return render(request, self.template_name, context)

class DeleteBlogView(LoginRequiredMixin, View):
	def get(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		if request.user == blog.author:
			blog.delete()
			messages.warning(request, 'Your blog is deleted!')
			return redirect('profile', username=request.user.username)
		raise Http404('Page Not Found')

class CategoryWiseBlogView(View):
	template_name = 'blog/category_blogs.html'
	def get(self, request, slug):
		category = get_object_or_404(Category, slug=slug)
		objects = category.blog_set.select_related('author').order_by('-views', '-created_on')
		page = request.GET.get('page', 1)
		paginator = Paginator(objects, 9)
		
		try:
			blogs = paginator.page(page)
		except PageNotAnInteger:
			blogs = paginator.page(1)
		except EmptyPage:
			blogs = paginator.page(paginator.num_pages)
		context = {
			'blogs' : blogs,
			'category' : category,
			'categories' : get_categories(),
			'tags' : get_tags(),
		}
		return render(request, self.template_name, context)

class TagWiseBlogView(View):
	template_name = 'blog/tag_blogs.html'
	def get(self, request, slug):
		tag = get_object_or_404(Tag, slug=slug)
		objects = tag.blog_set.select_related('author').order_by('-views', '-created_on')
		page = request.GET.get('page', 1)
		paginator = Paginator(objects, 9)
		
		try:
			blogs = paginator.page(page)
		except PageNotAnInteger:
			blogs = paginator.page(1)
		except EmptyPage:
			blogs = paginator.page(paginator.num_pages)
		context = {
			'blogs' : blogs,
			'tag' : tag,
			'categories' : get_categories(),
			'tags' : get_tags(),
		}
		return render(request, self.template_name, context)

class GetBlogLikesView(View):
	def get(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		queryet = blog.likes.filter(is_superuser=False, is_active=True).order_by('name')
		liked_users = []
		for user_object in queryet:
			each_user_data = {}
			each_user_data['name'] = user_object.name
			each_user_data['username'] = user_object.username
			each_user_data['profile'] = user_object.get_profile()
			each_user_data['is_you_follow'] = True if user_object.followers.filter(id=request.user.id).exists() else False
			each_user_data['show_follow_btn'] = True if request.user.is_authenticated and user_object != request.user else False
			liked_users.append(each_user_data)
		data = {
			'users_data' : liked_users,
			'title' : 'Likes',
		}
		return JsonResponse(data)

class ToggleLikeBlogView(View):
	def get(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		exists = blog.likes.filter(id=request.user.id).exists()
		if exists:
			blog.likes.remove(request.user)
			liked = False
		else:
			blog.likes.add(request.user)
			liked = True
		total_likes = blog.count_likes()
		return JsonResponse({'liked':liked, 'total_likes':total_likes})

class BlogCommentView(LoginRequiredMixin, View):
	def post(self, request, slug):
		blog = get_object_or_404(Blog, slug=slug)
		text = request.POST.get('text', '')
		if text:
			BlogComment.objects.create(blog=blog, user=request.user, text=text)
		return redirect('single_blog', slug=slug)

class EditCommentView(LoginRequiredMixin, View):
	def post(self, request, slug, comment_id):
		comment = get_object_or_404(BlogComment, id=comment_id)
		if request.user != comment.user:
			success = False
		text = request.POST.get('text')
		comment.text = text
		comment.save()
		return redirect('single_blog', slug=slug)

class DeleteCommentView(LoginRequiredMixin, View):
	def get(self, request, slug, comment_id):
		comment = get_object_or_404(BlogComment, id=comment_id)
		if request.user != comment.user:
			raise Http404('Page not found')
		comment.delete()
		messages.warning(request, 'Comment deleted!')
		return redirect('single_blog', slug=slug)
