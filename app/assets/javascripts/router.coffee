App.Router.reopen
  location: "history"

App.Router.map ->
  @route 'articles'
  @route 'photos'
  @resource 'login', ->
    @route 'auth'
  @route 'logout'


# App.Router.reopen
#   location: 'history'
