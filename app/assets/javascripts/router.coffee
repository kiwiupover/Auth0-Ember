App.Router.map ->
  @route 'articles'
  @route 'photos'
  @resource 'login', ->
    @route 'auth'


App.Router.reopen
  # location: 'hash'
