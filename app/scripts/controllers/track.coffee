'use strict'

angular.module('learnerd')
.controller 'TrackController', ($scope, $http, $routeParams, $location, ServerLocation) ->
  $http.post(ServerLocation + 'challenges/' + $routeParams.code + '/' + $routeParams.deck)
  .success (track) ->
    $scope.track = track
    $scope.deckSize = track['deck.size']
    $scope.question = track['question']
    $scope.deckNumber = track['deck']
    $scope.deckUntilNextLevel = track['track.decksUntilNextLevel']
    $scope.level = track['deck.level']
    $scope.percentage = 0


  submitAnswer: () ->
    $scope.percentage = ((($scope.question + 1) / $scope.deckSize) * 100).toFixed(2)
    $http.post($scope.answerLink).success (track) ->
      $scope.answerLink = null
      if(track['track.done'])
        $scope.track = null
        $scope.level = track['deck.level']
        $scope.successRate = track['deck.successRate']
        $scope.accomplishmentMessage = track['deck.accomplishmentMessage']
        $scope.passRate = track['deck.passRate']
      else if (track['deck.next'])
        $location.path('/tracks/' + $routeParams.code + '/' + track.deck)
        $scope.level = track['deck.level']
      else
        $scope.track = track
        $scope.deckSize = track['deck.size']
        $scope.question = track['question']
        $scope.deckNumber = track['deck']
        $scope.deckUntilNextLevel = track['track.decksUntilNextLevel']

