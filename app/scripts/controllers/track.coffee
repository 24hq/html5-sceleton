'use strict'

angular.module('learnerd')
.controller 'TrackController', ($scope, $routeParams, $http, AppLocationService) ->
  $http.post(AppLocationService + '/challenges/' + $routeParams.code).success (challenge) ->
    $scope.challenge = challenge
