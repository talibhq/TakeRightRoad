from django.db import models
from account.models import User

class Question(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	title = models.CharField(max_length=124, unique=True, null=True, blank=True)
	slug = models.SlugField(max_length=124, unique=True, null=True, blank=True)
	content = models.TextField(null=True, blank=True)
	timestamp = models.DateTimeField(auto_now_add=True)
	views = models.PositiveIntegerField(default=0)

	def __str__(self):
		return self.title

	def count_answers(self):
		return self.answer_set.all().count()

class Answer(models.Model):
	question = models.ForeignKey(Question, on_delete=models.CASCADE)
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	text = models.TextField()
	timestamp = models.DateTimeField(auto_now_add=True)
	smiles = models.PositiveIntegerField(default=0)