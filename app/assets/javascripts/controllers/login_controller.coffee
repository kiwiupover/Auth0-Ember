App.LoginController = Em.ObjectController.extend

  content: ""

  token: localStorage.token
  tokenChanged: (->
    localStorage.token = @get("token")
  ).observes("token")

  attemptedTransition: localStorage.attemptedTransition
  attemptedTransitionChanged: (->
    localStorage.attemptedTransition = @get("attemptedTransition")
  ).observes('attemptedTransition')


  transition: ->
    attemptedTransition = @attemptedTransition
    if attemptedTransition
      attemptedTransition.retry()
      self.set "attemptedTransition", null
    else
      # Redirect to 'articles' by default.
      self.transitionToRoute "articles"
