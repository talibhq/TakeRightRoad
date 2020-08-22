from django.urls import path
from .views import ListQuestionView, AskQuestionView, QuestionDetailsView, EditQuestionView, DeleteQuestionView, GiveAnswerView, EditAnswerView, DeleteAnswerView, GiveSmileToAnswerView

urlpatterns = [
	path('', ListQuestionView.as_view(), name='questions'),
	path('ask/', AskQuestionView.as_view(), name='ask_question'),
	path('<slug:slug>/', QuestionDetailsView.as_view(), name='question_details'),
	path('<slug:slug>/edit/', EditQuestionView.as_view(), name='edit_question'),
	path('<slug:slug>/delete/', DeleteQuestionView.as_view(), name='delete_question'),
	path('<slug:slug>/give-answer/', GiveAnswerView.as_view(), name='give_answer'),
	path('<slug:slug>/edit/answer/<int:answer_id>/', EditAnswerView.as_view(), name='edit_answer'),
	path('<slug:slug>/delete/answer/<int:answer_id>/', DeleteAnswerView.as_view(), name='delete_answer'),
	path('give-smile/<int:answer_id>/', GiveSmileToAnswerView.as_view(), name='give_smile'),
]