'use strict'

angular
.module('learnerd', [
    'ngRoute',
    'ngResource',
    'ui.bootstrap'
  ])
.config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'views/tracks.html'
    controller: 'TracksController'
  .when '/tracks/:code',
    templateUrl: 'views/track.html'
    controller: 'TrackController'
  .otherwise
      redirectTo: '/'
.factory 'AppLocationService', ->
  'http://localhost:8080/'


#.run ($rootScope) ->
#  $rootScope.appUrl = 'http://localhost:8080/'