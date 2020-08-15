from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from django.utils.text import slugify
from .models import Tag, Category, Blog

@receiver(pre_save, sender=Tag)
def create_slug_for_tag(sender, instance, **kwargs):
	slug = slugify(instance.name)
	instance.slug = slug

@receiver(pre_save, sender=Category)
def create_slug_for_category(sender, instance, **kwargs):
	slug = slugify(instance.name)
	instance.slug = slug