from django.db import models
from account.models import User
from ckeditor_uploader.fields import RichTextUploadingField

class Tag(models.Model):
	name = models.CharField(max_length=255, unique=True)
	slug = models.SlugField(max_length=255, unique=True, null=True, blank=True)
	banner = models.ImageField(upload_to='tag_banners', null=True, blank=True)

	def __str__(self):
		return self.name

class Category(models.Model):
	name = models.CharField(max_length=255, unique=True)
	slug = models.SlugField(max_length=255, unique=True, null=True, blank=True)
	banner = models.ImageField(upload_to='category_banners', null=True, blank=True)

	class Meta:
		verbose_name_plural = 'Categories'

	def __str__(self):
		return self.name

class Blog(models.Model):
	author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='author')
	title = models.CharField(max_length=255, unique=True)
	slug = models.SlugField(max_length=255, unique=True, null=True, blank=True)
	content = RichTextUploadingField()
	banner = models.ImageField(upload_to='blog_banners')
	location = models.CharField(max_length=255)
	likes = models.ManyToManyField(User, related_name='blog_likes', blank=True)
	views = models.PositiveIntegerField(default=0)
	category = models.ForeignKey(Category, on_delete=models.SET_NULL , null=True)
	tags = models.ManyToManyField(Tag, blank=True)
	created_on = models.DateTimeField(auto_now_add=True)
	updated_on = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.title

	def count_likes(self):
		return self.likes.filter(is_superuser=False, is_active=True).count()

class BlogComment(models.Model):
	blog = models.ForeignKey(Blog, on_delete=models.CASCADE)
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	text = models.TextField()
	created_on = models.DateTimeField(auto_now_add=True)

	def __str__(self):
		return self.blog.title + ' comments'