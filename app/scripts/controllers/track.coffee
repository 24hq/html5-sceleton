'use strict'

angular.module('learnerd')
.controller 'TrackController', ($scope, $http, TrackService) ->
  $scope.progress = 0
  $scope.deckSize = 6
  $scope.percentage = 0

  $http.post(TrackService.getTrackLink()).success (challenge) ->
    $scope.challenge = challenge

  submitAnswer: () ->
    $scope.progress++
    $scope.percentage = ((($scope.progress) / $scope.deckSize) * 100).toFixed(2)

    $http.post($scope.answerLink).success (response) ->
      $scope.answerLink = null
      if(response['track.done'])
        $scope.challenge = null
      else
        $scope.challenge = response

