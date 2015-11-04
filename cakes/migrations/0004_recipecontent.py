# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0003_auto_20151103_0306'),
    ]

    operations = [
        migrations.CreateModel(
            name='RecipeContent',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', primary_key=True, auto_created=True)),
                ('contents', models.ManyToManyField(to='cakes.Ingredient')),
                ('recipe', models.ForeignKey(to='cakes.Recipe')),
            ],
        ),
    ]
