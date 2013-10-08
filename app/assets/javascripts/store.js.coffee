App.ApplicationAdapter =  DS.RESTAdapter
# App.Store = DS.Store.extend
#   adapter: DS.RESTAdapter.create()

DS.RESTAdapter.reopen
  namespace: 'api'