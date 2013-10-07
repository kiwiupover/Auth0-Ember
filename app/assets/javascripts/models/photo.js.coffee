# for more details see: http://emberjs.com/guides/models/defining-models/

App.Photo = DS.Model.extend
  name: DS.attr 'string'
  text: DS.attr 'string'
