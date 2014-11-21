'use strict'

class TrackService
  constructor: (@$location, @$http, @ServerLocation) ->

  loadTrack: (@trackLink, @trackCode) ->
    @$location.path('/tracks/' + @trackCode)

  getTrackLink: ->
    @trackLink

angular.module('learnerd').service 'TrackService', ['$location', '$http', 'ServerLocation', TrackService]