App.Router.reopen
  location: "history"

App.Router.map ->
  @route 'posts'
  @route 'photos'
  @resource 'login', ->
    @route 'auth'
  @route 'logout'


# App.Router.reopen
#   location: 'history'
