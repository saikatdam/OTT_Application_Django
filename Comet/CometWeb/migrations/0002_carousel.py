# Generated by Django 5.0.1 on 2024-01-21 19:45

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CometWeb', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='carousel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('carousel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='CometWeb.movie_list')),
            ],
        ),
    ]