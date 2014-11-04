'use strict'

angular.module('learnerd')
.controller 'TracksController', ($scope, $http, $location, AppLocationService) ->
  $http.get(AppLocationService + 'tracks?page=0&size=1')
  .success (tracks) ->
    $scope.tracks = tracks
  .error (response)->
    console.log(response)

  startNewChallenge: (code) ->
    $location.path('/tracks/' + code)
