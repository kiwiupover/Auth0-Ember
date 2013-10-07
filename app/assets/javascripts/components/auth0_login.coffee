App.Auth0LoginComponent = Em.Component.extend
  tagName: 'span'
  classNames: []
  setupAuth0: (->
    auth0 = new Auth0
      domain: "kiwiupover.auth0.com"
      clientID: "GDpoPc2LDD09sv0FaGK9Qt4l8esMigU2"
      callbackURL: "http://localhost:3000/login"

      success: (user, idtoken) =>
        $cookieStore.put "user", user
        $cookieStore.put "token", idtoken
        debugger
        user = user
        token = idtoken

      failure: (err) ->
        alert "err status: " + err.status + " err code: " + err.code + " err decription: " + err.details.description
    @set('auth0', auth0)
  ).on('init')
  
  actions: 
    twitter: ->
      @auth0.login connection: "twitter"
