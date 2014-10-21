'use strict'

angular
.module('html5SceletonApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
    'ui.bootstrap'
  ])
.config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'views/questionary.html'
    controller: 'MainCtrl'
  .otherwise
      redirectTo: '/'

