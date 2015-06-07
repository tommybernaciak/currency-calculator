app = angular.module('currency-calculator')
ListController = ($scope, $http, GlobalService) ->

  $http.get('/currencies/list.json').success (result) ->
    currencies = JSON.parse(result.data)
    for i of boxes
      boxes[i]['expiry_date'] = Math.ceil(boxes[i]['expiry_date']/24)
    $scope.boxes = boxes



app.controller 'ListController', ['$scope', '$http', 'GlobalService', ListController]