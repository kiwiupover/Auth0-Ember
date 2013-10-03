# for more details see: http://emberjs.com/guides/models/defining-models/

Auth0.Article = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
