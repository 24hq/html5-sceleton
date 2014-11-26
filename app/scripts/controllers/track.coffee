'use strict'

angular.module('learnerd')
.controller 'TrackController', ($scope, $http, $routeParams, ServerLocation) ->
  $http.post(ServerLocation + 'challenges/' + $routeParams.code + '/' + $routeParams.deck)
  .success (track) ->
    $scope.track = track
    $scope.deckSize = track['deck.size']
    $scope.question = track['question']
    $scope.deckNumber = track['deck']
    $scope.deckUntilNextLevel = track['track.decksUntilNextLevel']
    $scope.percentage = 0


  submitAnswer: () ->
    $scope.percentage = ((($scope.question + 1) / $scope.deckSize) * 100).toFixed(2)
    $http.post($scope.answerLink).success (track) ->
      $scope.answerLink = null
      if(track['track.done'])
        $scope.track = null
        $scope.successRate = track['deck.successRate']
        $scope.accomplishmentMessage = track['deck.accomplishmentMessage']
        $scope.passRate = track['deck.passRate']
      else
        $scope.track = track
        $scope.deckSize = track['deck.size']
        $scope.question = track['question']
        $scope.deckNumber = track['deck']
        $scope.deckUntilNextLevel = track['track.decksUntilNextLevel']

