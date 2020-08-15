import pathlib
from django import forms
from .models import User

class UserSignupForm(forms.ModelForm):
	class Meta:
		model = User
		fields = ('name', 'email', 'password', 'profile')
		widgets = {
			'name' : forms.TextInput(attrs={'class':'form-control'}),
			'email' : forms.EmailInput(attrs={'class':'form-control', 'required':True}),
			'password' : forms.PasswordInput(attrs={'class':'form-control'}),
			'profile' : forms.FileInput(attrs={'class':'form-control'}),
		}

	def clean_email(self):
		email = self.cleaned_data['email']
		if email:
			user_objects = User.objects.filter(email=email)
			if user_objects.exists():
				raise forms.ValidationError('Email already registered')
			return email
		raise forms.ValidationError('This field is required')

	def clean_password(self):
		password = self.cleaned_data['password']
		if len(password) < 8 or not password.isalnum():
			raise forms.ValidationError('Password must be alphanumeric and length of 8')
		return password

	def clean_profile(self):
		profile = self.cleaned_data['profile']
		if profile:
			valid_extensions = ['.png', '.jpg', '.jpeg']
			extension = pathlib.Path(profile.name).suffix
			if extension not in valid_extensions:
				raise forms.ValidationError('File must be .png .jpeg or .jpg')
		return profile


class UserLoginForm(forms.Form):
	email = forms.CharField(widget=forms.EmailInput(attrs={'class':'form-control'}))
	password = forms.CharField(widget=forms.PasswordInput(attrs={'class':'form-control'}))


class UserUpdateProfileForm(forms.ModelForm):
	class Meta:
		model = User
		fields = ('name', 'bio', 'profile', 'facebook_link', 'instagram_link', 'twitter_link')
		widgets = {
			'name' : forms.TextInput(attrs={'class':'form-control'}),
			'bio' : forms.Textarea(attrs={'class':'form-control'}),
			'profile' : forms.FileInput(attrs={'class':'form-control', 'onChange':'previewProfile(event)'}),
			'facebook_link' : forms.TextInput(attrs={'class':'form-control'}),
			'instagram_link' : forms.TextInput(attrs={'class':'form-control'}),
			'twitter_link' : forms.TextInput(attrs={'class':'form-control'}),
		}

	def clean_profile(self):
		profile = self.cleaned_data['profile']
		if profile:
			valid_extensions = ['.png', '.jpg', '.jpeg']
			extension = pathlib.Path(profile.name).suffix
			if extension not in valid_extensions:
				raise forms.ValidationError('File must be .png .jpeg or .jpg')
		return profile