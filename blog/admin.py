from django.contrib import admin
from .models import Blog, Category, Tag, BlogComment

@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
	list_display = ['title', 'slug', 'author']
	search_fields = ['title']

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
	search_fields = ['name']

@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
	search_fields = ['name']

@admin.register(BlogComment)
class BlogCommentAdmin(admin.ModelAdmin):
	search_fields = ['blog__title']