__author__ = 'lzq'

from cakes.models import *
from cakes.serializers import *

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.request import Request

from django.http import Http404
from django.db.models import Q

class RecipeContentList(APIView):
    def get(self, request, format=None):
        search_word = self.request.query_params.get('search', None)
        params = dict(self.request.query_params)
        print(params)

        if (search_word != None):
            recipe_contents = RecipeContent.objects.all().filter(Q(contents__name__icontains = search_word) | Q(recipe__name__icontains = search_word))
            recipe_contents = recipe_contents.order_by().distinct()
        else:
            recipe_contents = RecipeContent.objects.all()

        if (params):
            try:
                include = params["include"]
                for p in include:
                    recipe_contents = recipe_contents.filter(contents__name__iexact = p)
            except:
                pass

            try:
                exclude = params["exclude"]
                for p in exclude:
                    recipe_contents = recipe_contents.exclude(contents__name__iexact = p)
            except:
                pass

        serialized_rc = RecipeContentSerializer(recipe_contents, many=True)
        return Response(serialized_rc.data)

class IngredientList(APIView):
    def get(self, request, format=None):
        ingredients = Ingredient.objects.all()
        serialized_ing = IngredientSerializer(ingredients, many = True)
        return Response(serialized_ing.data)