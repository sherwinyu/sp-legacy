Sp.Router = Ember.Router.extend
  location: 'hash',
  goToCars: Ember.Route.transitionTo('root.cars')
  goToHome: Ember.Route.transitionTo('root.shoes')
  goToShoes: Ember.Route.transitionTo('root.shoes')
    
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'

      enter: (router) ->
        console.log "index substate entered"

      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('greeting', 'salutation', greeting: 'My ember app')
        router.get('applicationController').connectOutlet('body', 'traversal')



      # You'll likely want to connect a view here.
      # connectOutlets: function(router) {
      #   router.get('applicationController').connectOutlet(App.MainView);
      # }

      # Layout your routes here...
    
    shoes: Ember.Route.extend
      route: '/shoes'
      enter: (router) ->
        console.log "Shoes substate entered"
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('body', 'shoes', Sp.Shoe.all())
        router.get('applicationController').connectOutlet('greeting', 'salutation', greeting: 'shoes say hi')
        router.get('applicationController').connectOutlet('footer', 'traversal')

    cars: Ember.Route.extend
      route: '/cars'
      enter: (router) ->
        console.log "Cars substate entered"
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('body', 'cars')
        router.get('applicationController').connectOutlet('greeting', 'salutation', greeting: 'cars say hi')
        router.get('applicationController').connectOutlet('footer', 'traversal')



  enableLogging: true
