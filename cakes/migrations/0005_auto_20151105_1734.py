# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0004_recipecontent'),
    ]

    operations = [
        migrations.AlterField(
            model_name='recipecontent',
            name='contents',
            field=models.ManyToManyField(to='cakes.Variation'),
        ),
    ]
