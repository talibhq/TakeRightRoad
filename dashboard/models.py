from django.db import models

class UserQuery(models.Model):
	name = models.CharField(max_length=255)
	email = models.CharField(max_length=255)
	subject = models.CharField(max_length=255)
	content = models.TextField()
	created_on = models.DateTimeField(auto_now_add=True)
	is_seen = models.BooleanField(default=False)

	class Meta:
		verbose_name_plural = 'Queries'

	def __str__(self):
		return self.subject
