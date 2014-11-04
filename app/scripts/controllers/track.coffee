'use strict'

angular.module('learnerd')
.controller 'TrackController', ($scope, $routeParams, $http, AppLocationService) ->
  $http.post(AppLocationService + '/challenges/' + $routeParams.code).success (challenge) ->
    $scope.challenge = challenge
  #    $scope.question = challenge.question.title
  #    $scope.answerOptions = challenge.question.answerOptions

  submitAnswer: () ->
    $http.post($scope.answerLink).success (response) ->
      if(response['track.done'])
        $scope.challenge = null
      else
        $scope.challenge = response
