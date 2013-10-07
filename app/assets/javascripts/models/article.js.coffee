# for more details see: http://emberjs.com/guides/models/defining-models/

App.Article = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
