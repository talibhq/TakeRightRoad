from django.urls import path
from .views import ListQuestionView, QuestionDetailsView, AskQuestionView, GiveAnswerView, GiveSmileToAnswerView

urlpatterns = [
	path('ask/', AskQuestionView.as_view(), name='ask_question'),
	path('<slug:slug>/', QuestionDetailsView.as_view(), name='question_details'),
	path('<slug:slug>/give-answer/', GiveAnswerView.as_view(), name='give_answer'),
	path('give-smile/<int:answer_id>/', GiveSmileToAnswerView.as_view(), name='give_smile'),
	path('', ListQuestionView.as_view(), name='questions'),
]