import random, string
from .models import User
from django.utils.text import slugify

def generate_unique_username(name):
	while True:
		number = ''.join(random.choice(string.digits) for _ in range(8))
		username = name + number
		user_objects = User.objects.filter(username=username)
		if not user_objects.exists():
			break
	return slugify(username)