__author__ = 'lzq'

from cakes.models import *
from cakes.serializers import *

from rest_framework.views import APIView
from rest_framework.response import Response

from django.http import Http404

class RecipeContentList(APIView):
    def get(self, request, format=None):
        recipe_contents = RecipeContent.objects.all()
        serialized_rc = RecipeContentSerializer(recipe_contents, many=True)
        return Response(serialized_rc.data)