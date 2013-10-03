# http://emberjs.com/guides/models/defining-a-store/

Auth0.Store = DS.Store.extend
  adapter: DS.RESTAdapter.create()

