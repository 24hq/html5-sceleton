'use strict'

class RoutesConfiguration
  constructor: ($routeProvider) ->
    $routeProvider
    .when '/',
      templateUrl: 'views/main.html'
      controller: 'MainController'
    .when '/tracks/:code',
      templateUrl: 'views/track.html'
      controller: 'TrackController'
    .otherwise
        redirectTo: '/'

angular.module('learnerd', ['ngRoute']).config ['$routeProvider', RoutesConfiguration] 