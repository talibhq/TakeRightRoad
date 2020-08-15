from django.contrib import admin
from .models import User

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
	list_display = ['name', 'username', 'email']
	fields = ('name', 'bio', 'profile', 'followers', 'facebook_link', 'instagram_link', 'twitter_link', 'date_joined')
	search_fields = ['name']

admin.site.site_header = 'TakeRightRoad-Admin Panel'