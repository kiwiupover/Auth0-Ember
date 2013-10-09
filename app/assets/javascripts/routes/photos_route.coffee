App.PhotosRoute = App.AuthenticationRoute.extend
  model: ->
    this.store.find('photo')
