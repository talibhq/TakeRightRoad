from django import forms
from .models import Blog
from ckeditor_uploader.widgets import CKEditorUploadingWidget

class BlogForm(forms.ModelForm):
	content = forms.CharField(widget=CKEditorUploadingWidget())
	class Meta:
		model = Blog
		fields = ('title', 'content', 'banner', 'location', 'category', 'tags')
		widgets = {
			'title' : forms.TextInput(attrs={'class':'form-control'}),
			'banner' : forms.FileInput(attrs={'class':'form-control'}),
			'location' : forms.TextInput(attrs={'class':'form-control'}),
			'category' : forms.Select(attrs={'class':'form-control'}),
			'tags' : forms.SelectMultiple(attrs={'class':'form-control'}),
		}