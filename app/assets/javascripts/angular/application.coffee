app = angular.module 'currency-calculator',
  [
    'ngRoute',
    'ngCookies',
    'templates'
  ]

app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/', { templateUrl: 'main.html'} )
]