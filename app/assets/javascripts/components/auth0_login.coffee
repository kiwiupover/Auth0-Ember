App.Auth0LoginComponent = Em.Component.extend
  tagName: 'span'
  classNames: []
  name: 'unauthorized'
  setupAuth0: (->
    auth0 = new Auth0
      domain: "kiwiupover.auth0.com"
      clientID: "GDpoPc2LDD09sv0FaGK9Qt4l8esMigU2"
      callbackURL: "http://localhost:3000/login/auth"

    console.log "auth0 hash %O", auth0

    auth0.parseHash (profile) ->
      window.location.hash = ""
      @set('name', profile.name)
      return alert('hello ' + profile.name)

    @set('auth0', auth0)
  ).on('init')
  
  actions: 
    twitter: ->
      @auth0.login connection: "twitter"
    
    gmail: ->
      @auth0.login connection: "github"

  parseAuth0: (->
    auth0 = @get('auth0')
    console.log "auth0 hash %O", auth0
    auth0.parseHash (profile) ->
      user = profile if profile else user['name'] = "nobody"
      window.location.hash = ""
      @set('name', profile.name)
      return alert('hello ' + user.name)
  ).on('didInsertElement')

