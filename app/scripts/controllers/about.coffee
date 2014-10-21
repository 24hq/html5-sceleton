'use strict'

###*
 # @ngdoc function
 # @name html5SceletonApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the html5SceletonApp
###
angular.module('html5SceletonApp')
.controller 'AboutCtrl', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
