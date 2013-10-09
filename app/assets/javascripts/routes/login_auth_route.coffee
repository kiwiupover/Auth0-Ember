App.LoginAuthRoute = Em.Route.extend

  beforeModel: ->    
    @transitionTo('posts');

  # model: ->

