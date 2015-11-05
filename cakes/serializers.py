from django.contrib.auth.models import User, Group
from cakes.models import *
from rest_framework import serializers

class RecipeContentSerializer(serializers.ModelSerializer):
    class Meta:
        model = RecipeContent
        depth = 1

class IngredientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ingredient

class VariationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Variation