app = angular.module('currency-calculator')
CalculatorController = ($scope, $http, GlobalService) ->

  $scope.value1 = 1
  $scope.value2 = 1
  $scope.rate1 = 1
  $scope.rate2 = 1
  $scope.newNumber = true

  $http.get('/currency_list.json').success (result) ->
    $scope.currency1 = JSON.parse(result.data)
    $scope.SelectedOption1 = $scope.currency1[31]

  $http.get('/currency_list.json').success (result) ->
    $scope.currency2 = JSON.parse(result.data)
    $scope.SelectedOption2 = $scope.currency2[31]

  $scope.changedValue1= (currency) ->
    $scope.rate1 = currency.rate
    $scope.value2 = ( $scope.value1 * $scope.rate1 ) / $scope.rate2

  $scope.changedValue2= (currency) ->
    $scope.rate2 = currency.rate
    $scope.value2 = ( $scope.value1 * $scope.rate1 ) / $scope.rate2

  $scope.calculate= (val) ->
    if ($scope.value1 == "0" || $scope.newNumber)
      $scope.value1 = val;
      $scope.newNumber = false;
    else
      $scope.value1 += String(val)
    $scope.value2 = ( $scope.value1 * $scope.rate2 ) / $scope.rate1

  $scope.zero= ->
    $scope.value1 = "0"
    $scope.value2 = "0"




app.controller 'CalculatorController', ['$scope', '$http', 'GlobalService', CalculatorController]