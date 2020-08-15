from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
	name = models.CharField(max_length=255)
	profile = models.ImageField(upload_to='user_profiles', null=True, blank=True)
	bio = models.TextField(null=True, blank=True)
	followers = models.ManyToManyField('self', symmetrical=False, blank=True)
	facebook_link = models.URLField(null=True, blank=True)
	instagram_link = models.URLField(null=True, blank=True)
	twitter_link = models.URLField(null=True, blank=True)

	def count_followers(self):
		return self.followers.count()

	def count_following(self):
		return User.objects.filter(followers=self).count()

	def get_profile(self):
		return self.profile.url if self.profile else '/static/img/default_user.jpg'
