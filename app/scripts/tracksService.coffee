'use strict'

class TracksService
  constructor: (@$http, @ServerLocation) ->

  loadTracks: (page, size) ->
    @$http.get(@ServerLocation + 'tracks?page=' + page + '&size=' + size)


angular.module('learnerd').service 'TracksService', ['$http', 'ServerLocation', TracksService]