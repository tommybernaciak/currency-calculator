app = angular.module('currency-calculator')
CalculatorController = ($scope, $http, GlobalService) ->

  $scope.value1 = 1
  $scope.value2 = 1

  $http.get('/currency_list.json').success (result) ->
    $scope.currency1 = JSON.parse(result.data)
    $scope.SelectedOption1 = $scope.currency1[0]

  $http.get('/currency_list.json').success (result) ->
    $scope.currency2 = JSON.parse(result.data)
    $scope.SelectedOption2 = $scope.currency2[0]

  $scope.changedValue1= (currency) ->
    $scope.value1 = currency.rate

  $scope.changedValue2= (currency) ->
    $scope.value2 = currency.rate



app.controller 'CalculatorController', ['$scope', '$http', 'GlobalService', CalculatorController]