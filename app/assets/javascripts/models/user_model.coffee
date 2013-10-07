App.User = DS.Model.extend
  username: DS.attr('string')
  password: DS.attr('string')
  authType: DS.attr('string')