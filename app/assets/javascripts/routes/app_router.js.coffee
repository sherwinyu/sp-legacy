Sp.Router = Ember.Router.extend
  location: 'hash',
    
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'

      enter: (router) ->
        console.log "index substate entered"

      # You'll likely want to connect a view here.
      # connectOutlets: function(router) {
      #   router.get('applicationController').connectOutlet(App.MainView);
      # }

      # Layout your routes here...
    
    shoes: Ember.Route.extend
      route: '/shoes'
      enter: (router) ->
        console.log "Shoes substate entered"

    cars: Ember.Route.extend
      route: '/cars'
      enter: (router) ->
        console.log "Cars substate entered"

  enableLogging: true
