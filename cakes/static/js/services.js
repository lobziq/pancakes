angular.module('searchApp.services', ['ngResource'])
.factory('Recipes', function($resource) {
    return $resource('/api/recipes/');
})
.factory("Ingredients", function($resource) {
    return $resource("/api/ingredients/");
});