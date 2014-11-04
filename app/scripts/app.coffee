'use strict'

#connectionRefusedInterceptor: (rejection) ->
#  if(rejection.status == 0)
#    window.location = "noresponse.html"
#  else
#    $q.reject(rejection);


angular
.module('learnerd', [
    'ngRoute',
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
