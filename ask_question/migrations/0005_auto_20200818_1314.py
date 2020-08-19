# Generated by Django 3.0.8 on 2020-08-18 13:14

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('ask_question', '0004_question_views'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='answer',
            name='smiles',
        ),
        migrations.AddField(
            model_name='answer',
            name='smiles',
            field=models.ManyToManyField(blank=True, related_name='smiles', to=settings.AUTH_USER_MODEL),
        ),
    ]
