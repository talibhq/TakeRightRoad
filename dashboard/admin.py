from django.contrib import admin
from .models import UserQuery

@admin.register(UserQuery)
class UserQueryAdmin(admin.ModelAdmin):
	list_display = ['name', 'email', 'subject']
	search_fields = ['name', 'subject']
