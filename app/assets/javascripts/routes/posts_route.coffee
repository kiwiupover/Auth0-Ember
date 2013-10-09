App.PostsRoute = App.AuthenticationRoute.extend
  model: ->
    this.store.find('post')

