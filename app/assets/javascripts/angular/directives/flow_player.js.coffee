App.directive 'flowPlayer', ->
  (scope, element, attrs) ->

    # Trigger when the selectedScreencast function is called
    # with a screencast
    scope.$watch 'selectedScreencast', (screencast) ->
      if screencast

        # See http://flowplayer.org/docs/
        element.flowplayer
          playlist: [[mp4: screencast.video_url]]
          ratio: 9 / 14