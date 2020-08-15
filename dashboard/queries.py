from account.models import User
from blog.models import Blog, Category, Tag
from django.db.models import Count

def get_categories():
	return Category.objects.annotate(count_blogs=Count('blog')).order_by('-count_blogs', 'name')[:6]

def get_tags():
	return Tag.objects.annotate(count_blogs=Count('blog')).order_by('-count_blogs', 'name')[:10]