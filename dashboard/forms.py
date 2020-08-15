from django import forms
from .models import UserQuery

class UserQueryForm(forms.ModelForm):
	class Meta:
		model = UserQuery
		fields = ('name', 'email', 'subject', 'content')
		widgets = {
			'name' : forms.TextInput(attrs={'class':'form-control input-border'}),
			'email' : forms.EmailInput(attrs={'class':'form-control input-border'}),
			'subject' : forms.TextInput(attrs={'class':'form-control input-border'}),
			'content' : forms.Textarea(attrs={'class':'form-control input-border'}),
		}