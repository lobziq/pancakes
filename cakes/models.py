from django.db import models

# Create your models here.
class Ingredient(models.Model):
    name = models.CharField(max_length=1024)

    def __str__(self):
        return self.name

class Variation(models.Model):
    name = models.CharField(max_length=1024)
    ingredient = models.ForeignKey(Ingredient)

    def __str__(self):
        return self.name

class Recipe(models.Model):
    name = models.CharField(max_length=1024)

    def __str__(self):
        return self.name

class RecipeContent(models.Model):
    recipe = models.ForeignKey(Recipe)
    contents = models.ManyToManyField(Ingredient)

    def __str__(self):
        s = self.recipe.name + " content"
        return s