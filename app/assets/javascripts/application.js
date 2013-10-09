//= require jquery
//= require jquery_ujs
//= require foundation
//= require lib/auth0.lib
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require auth

// for more details see: http://emberjs.com/guides/application/
App = Ember.Application.create();


//= require lib/ember_auth0.js
//= require_tree .

App.UserInfo = Em.Object.create();

var auth0;

App.Auth0 = new Auth0({ 
  domain: "kiwiupover.auth0.com",
  clientID: "GDpoPc2LDD09sv0FaGK9Qt4l8esMigU2",
  callbackURL: "http://localhost:3000/login/auth"
});

App.Auth0.parseHash(function(profile, authId, authToken, state) {
  window.location.hash = "";
  if(authId){
    App.UserInfo.setProperties({
      profile: profile,
      authId: authId,
      authToken: authToken,
      name: profile.name,
      picture: profile.picture,
      signedIn: true
    });
  }
  
  return App.UserInfo;
});
