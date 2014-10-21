'use strict'

###*
 # @ngdoc function
 # @name html5SceletonApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the html5SceletonApp
###
angular.module('html5SceletonApp')
.controller 'MainCtrl', ($scope) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
