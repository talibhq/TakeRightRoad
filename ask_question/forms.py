from django import forms
from .models import Question, Answer

class QuestionForm(forms.ModelForm):
	class Meta:
		model = Question
		fields = ('title', 'content')
		widgets = {
			'title' : forms.TextInput(attrs={'class':'form-control'}),
			'content' : forms.Textarea(attrs={'class':'form-control'}),
		}