App.factory 'Screencast', ['$resource', ($resource) ->
  $resource '/api/screencasts/:id', id: '@id'
]