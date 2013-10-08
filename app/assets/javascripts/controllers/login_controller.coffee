App.LoginController = Em.ObjectController.extend


  transition: ->
    attemptedTransition = @attemptedTransition
    if attemptedTransition
      attemptedTransition.retry()
      self.set "attemptedTransition", null
    else
      # Redirect to 'articles' by default.
      self.transitionToRoute "articles"
