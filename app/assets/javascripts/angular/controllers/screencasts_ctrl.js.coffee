App.controller 'ScreencastsCtrl', ['$scope', 'Screencast', ($scope, Screencast) ->
  # Attributes accessible on the view
  $scope.selectedScreencast = null
  $scope.selectedRow        = null

  # Gather the screencasts and set the selected one to the first on success
  $scope.screencasts = Screencast.query ->
    $scope.selectedScreencast = $scope.screencasts[0]
    $scope.selectedRow = 0

  # Set the selected screencast to the one which was clicked
  $scope.showScreencast = (screencast, row) ->
    $scope.selectedScreencast = screencast
    $scope.selectedRow = row
]