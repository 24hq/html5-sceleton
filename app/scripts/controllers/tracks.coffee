'use strict'

angular.module('learnerd')
.controller 'TracksController', ($scope, $http, $location, AppLocationService) ->
  $http.get(AppLocationService + 'tracks?page=0&size=1').success (tracks) ->
    $scope.tracks = tracks

  startNewChallenge: (code) ->
    $location.path('/tracks/' + code)
#  new Tracks(1,1).loadTracks().then (tracks) ->
#    $scope.tracks = tracks
#  loadTracks: ->
#  Tracks = $resource('http://localhost:8080/tracks?page=0&size=1', []);
#
#  Tracks.get({ page: 0, size: 1 }, (tracks) ->
#    @tracks = tracks
#    alert(tracks.ok))
#  $scope.awesomeThings = [
#    'HTML5 Boilerplate'
#    'AngularJS'
#    'Karma'
#  ]


#app.factory 'Tracks', ['$http', ($http) ->
#  new class Tracks
#    constructor: (page, size) ->
#      @page = page
#      @pageSize = size
#      @loadTracks()
#
#    loadTracks: ->
#      request = $http.get 'http://localhost:8080/tracks', params: { page: @page, size: @pageSize }
#      request.then (tracks) ->
#        new Track(track.title, track.description) for track in tracks
#]
#
#app.factory 'Track', [ ->
#  new class Track
#    constructor: (@title, @description) ->
#]