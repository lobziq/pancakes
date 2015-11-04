from django.shortcuts import render
from django.http import HttpResponse

from .models import Recipe

# Create your views here.
def index(request):
    recipes_list = Recipe.objects.all()
    context = {'recipes_list': recipes_list}

    return render(request, "index.html", context)