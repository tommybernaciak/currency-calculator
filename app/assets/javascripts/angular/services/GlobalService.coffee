angular.module('GlobalService', []).service 'GlobalService',
["$rootScope", "$location", ($rootScope, $location) ->

  history = []

  $rootScope.$on '$routeChangeSuccess', ->
    history.push $location.$$path
    return

  $rootScope.go = (path) -> $location.path path

  $rootScope.back = ->
    prevUrl = if history.length > 1 then history.splice(-2)[0] else '/'
    $location.path prevUrl
    return
]