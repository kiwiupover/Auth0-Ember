# for more details see: http://emberjs.com/guides/models/defining-models/

App.Post = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
