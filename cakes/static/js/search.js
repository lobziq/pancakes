var searchApp = angular.module('searchApp', ['ngResource', 'searchApp.services']);
        
searchApp.controller('SearchCtrl', function ($scope, Recipes, Ingredients) {
    $scope.recipes = {};
    $scope.ingredients = {};
    $scope.include = [];
    $scope.exclude = [];
    $scope.filter = true;
    
    Ingredients.query(function(response) {
        $scope.ingredients = response;
        //alert(response.name);
    });
    
    Recipes.query({search:$scope.searchBox}, function(response) {
        $scope.recipes = response;
    });
    
    $scope.search = function() {
        
        Recipes.query({search:$scope.searchBox, include:$scope.include, exclude:$scope.exclude}, function(response) {
            $scope.recipes = response;
        });
    }
    
    $scope.checkForIngredient = function(name) {
        for (var i = 0; i < $scope.include.length; i++) {
            if ($scope.include[i].toUpperCase() === name.toUpperCase()) {
                alert("Такой ингредиент уже добавлен в список фильтра");
                return true;            
            }         
        }
        
        for (var i = 0; i < $scope.exclude.length; i++) {
            if ($scope.exclude[i].toUpperCase() === name.toUpperCase()) {
                alert("Такой ингредиент уже добавлен в список фильтра");
                return true;         
            }         
        }
        
        for (var i = 0; i < $scope.ingredients.length; i++) {
            if ($scope.ingredients[i].name.toUpperCase() === name.toUpperCase()) { 
                return false;     
            }
        }
        
        alert("Такого ингредиента не существует");
        return true;
    }      
    
    $scope.addToInclude = function() {
        if ($scope.checkForIngredient($scope.includeBox) == false) {
            $scope.include.push($scope.includeBox);
            $scope.includeBox = "";
        }
    }
    
    $scope.addToExclude = function() {
        if ($scope.checkForIngredient($scope.excludeBox) == false) {
            $scope.exclude.push($scope.excludeBox);
            $scope.excludeBox = "";
        }
    }
    
    $scope.toggleFilter = function() {
        if ($scope.filter == true) { 
            $scope.filter = false;
        }
        else { 
            $scope.filter = true;
        }
    }
    
    $scope.removeFilterItem = function(item) {
        if ($scope.include.indexOf(item) > -1) {
            $scope.include.splice($scope.include.indexOf(item), 1);       
        }
        if ($scope.exclude.indexOf(item) > -1) {
            $scope.exclude.splice($scope.exclude.indexOf(item), 1);       
        }
    }
});