'use strict'

angular.module('learnerd')
.controller 'MainController', ($scope, TracksService, TrackService) ->
  ##init
  page = 1
  size = 1
  $scope.tracks = TracksService.loadTracks(page, size)
  .success (tracks) ->
    $scope.links = tracks.pop().links
    $scope.tracks = tracks

  startNewChallenge: (code) ->
    link = (trackLink for trackLink in $scope.links when trackLink.href.indexOf(code) != -1)[0].href
    TrackService.loadTrack(link, code)
    
