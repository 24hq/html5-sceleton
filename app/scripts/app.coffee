'use strict'

###*
 # @ngdoc overview
 # @name html5SceletonApp
 # @description
 # # html5SceletonApp
 #
 # Main module of the application.
###
angular
.module('html5SceletonApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
.config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'views/main.html'
    controller: 'MainCtrl'
  .when '/about',
    templateUrl: 'views/about.html'
    controller: 'AboutCtrl'
  .otherwise
      redirectTo: '/'

