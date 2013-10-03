# http://emberjs.com/guides/models/defining-a-store/

Auth0.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

