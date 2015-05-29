app = angular.module 'currency-calculator',
  [
    'ngRoute',
    'templates'
  ]

app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/', { templateUrl: 'main.html'} )
]