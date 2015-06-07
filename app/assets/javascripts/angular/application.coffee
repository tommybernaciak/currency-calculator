app = angular.module 'currency-calculator',
  [
    'ngRoute',
    'templates',
    'mobile-angular-ui',
    'GlobalService'
  ]

app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/', { templateUrl: 'main.html', reloadOnSearch: false})
    .when('/about', { templateUrl: 'about.html', reloadOnSearch: false})
    .when('/list', { templateUrl: 'list.html', controller: 'ListController', reloadOnSearch: false })
    .when('/calculator', { templateUrl: 'calculator.html', controller: 'CalculatorController', reloadOnSearch: false })
]