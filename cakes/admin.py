from django.contrib import admin

from .models import Recipe, Ingredient, Variation, RecipeContent
# Register your models here.

#class

class IngredientManager(admin.TabularInline):
    model = Variation
    extra = 3

class IngredientAdmin(admin.ModelAdmin):
    inlines = [IngredientManager]

class RecipeManager(admin.TabularInline):
    model = RecipeContent.contents.through
    extra = 2

class RecipeContentAdmin(admin.ModelAdmin):
    inlines = [RecipeManager]
    exclude = ('contents', )

admin.site.register(Recipe)
admin.site.register(Ingredient, IngredientAdmin)
admin.site.register(Variation)
admin.site.register(RecipeContent, RecipeContentAdmin)