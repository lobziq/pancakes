# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0002_auto_20151103_0213'),
    ]

    operations = [
        migrations.CreateModel(
            name='Variation',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=1024)),
                ('ingredient', models.ForeignKey(to='cakes.Ingredient')),
            ],
        ),
        migrations.RemoveField(
            model_name='recipe',
            name='ingredients',
        ),
    ]
