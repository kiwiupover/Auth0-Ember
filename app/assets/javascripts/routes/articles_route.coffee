App.ArticlesRoute = Em.Route.extend
  # activate: ->
  # deactivate: ->
  # setupController: (controller, model)->
  # renderTemplate: ->
  # beforeModel: ->
  # afterModel: ->

  model: ->
    this.store.find('article')
