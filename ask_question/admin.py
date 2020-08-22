from django.contrib import admin
from .models import Question, Answer

@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
	list_display = ['user', 'title', 'timestamp']
	search_fields = ['title']

@admin.register(Answer)
class AnswerAdmin(admin.ModelAdmin):
	list_display = ['question', 'user', 'timestamp']
	search_fields = ['question']
