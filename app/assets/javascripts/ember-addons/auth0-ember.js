var auth0;

App.Auth0 = new Auth0({ 
  domain: "kiwiupover.auth0.com",
  clientID: "GDpoPc2LDD09sv0FaGK9Qt4l8esMigU2",
  callbackURL: "http://localhost:3000/login/auth"
});

App.Auth0.parseHash(function(profile, authId, authToken, state) {
  window.location.hash = "";
  if(authId){
    App.UserInfo = Em.Object.create({
      profile: profile,
      authId: authId,
      name: profile.name,
      picture: profile.picture
    });
    App.UserInfo.set('signedIn', true);
  }
  

  return App.UserInfo;
});