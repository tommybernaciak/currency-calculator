app = angular.module('currency-calculator')
ListController = ($scope, $http, GlobalService) ->

  $http.get('/currency_list.json').success (result) ->
    $scope.currency = JSON.parse(result.data)

app.controller 'ListController', ['$scope', '$http', 'GlobalService', ListController]