App._AuthenticationRoute = Ember.Route.extend(
  beforeModel: (transition) ->
    @redirectToLogin transition  unless @controllerFor("login").get("token")

  redirectToLogin: (transition) ->
    alert "You must log in!"
    debugger;
    @transitionTo "login"

  actions:
    error: (reason, transition) ->
      if reason.status is 401
        @redirectToLogin transition
      else
        alert "Something went wrong"
)