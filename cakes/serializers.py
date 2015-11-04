from django.contrib.auth.models import User, Group
from cakes.models import *
from rest_framework import serializers

class RecipeContentSerializer(serializers.ModelSerializer):
    class Meta:
        model = RecipeContent
        depth = 1