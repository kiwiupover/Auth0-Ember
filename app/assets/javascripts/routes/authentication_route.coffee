App.AuthenticationRoute = Ember.Route.extend(
  beforeModel: (transition) ->
    @redirectToLogin transition unless App.UserInfo.get("authToken")

  redirectToLogin: (transition) ->
    
    alert "You must log in!"
    @transitionTo "login"

  actions:
    error: (reason, transition) ->
      if reason.status is 401
        @redirectToLogin transition
      else
        alert "Something went wrong"
)