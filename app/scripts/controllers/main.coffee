'use strict'

angular.module('learnerd')
.controller 'MainController', ($scope, $http, ServerLocation, $location) ->
  page = 1
  size = 1
  $http.get(ServerLocation + 'tracks?page=' + page + '&size=' + size)
  .success (tracks) ->
    $scope.tracks = tracks
    $scope.links = tracks.pop().links
    $scope.tracks = tracks


  startNewChallenge: (code) ->
    $location.path('/tracks/' + code + '/' + 0)
    
    
