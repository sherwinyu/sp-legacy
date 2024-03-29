Sp.Router = Ember.Router.extend
  location: 'hash',
  goToCars: Ember.Route.transitionTo('root.cars')
  goToHome: Ember.Route.transitionTo('root.shoes')
  goToShoes: Ember.Route.transitionTo('root.shoes.index')
    
  root: Ember.Route.extend
    spindex: Ember.Route.extend
      route: '/sp'
      enter: (router) ->
        console.log "spindex entered"

      connectOutlets: (router, context) ->
        pomController = router.get('pomController')
        # console.log 'pomController', pomController
        # console.log 'pomController', pomController.content
        # console.log 'pomController', pomController.content.get('description')
        # console.log 'pomController', pomController.content.get('id')
        # console.log 'pomController', pomController.content.get('startTime')
        # console.log 'pomController', pomController.content.get('duration2')

        # router.get('applicationController').connectOutlet('body', 'poms', Sp.store.findAll(Sp.Pom))
        router.get('applicationController').connectOutlet('body', 'pom', pomController.get('content'))
        router.get('applicationController').connectOutlet('footer', 'pom', pomController.get('content'))

    spshow: Em.Route.extend
      route: '/:id'

      enter: -> 
        console.log "spshow substate entered"

      deserialize: (router, context) ->
          return Sp.Pom.find context.id

      serialize: (router, context) ->
        return {id: context.id}

    spnew: Em.Route.extend
      route :'/new'

      connectOutlets: (router, context) ->
        pomController = router.get('pomController')
        router.get('applicationController').connectOutlet('greeting', 'salutation', greeting: 'My ember app')


        



















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
      showShoe: Em.Route.transitionTo('root.shoes.show')

      route: '/shoes'


      enter: (router) ->
        console.log "Shoes substate entered"

      index: Ember.Route.extend
        route: '/',
        connectOutlets: (router, context) ->
          router.get('applicationController').connectOutlet('body', 'shoes', Sp.Shoe.all())
          router.get('applicationController').connectOutlet('greeting', 'salutation', greeting: 'shoes say hi')
          router.get('applicationController').connectOutlet('footer', 'traversal')

      show: Em.Route.extend
        route: '/:id'
        enter: -> 
          console.log "shoe detail substate entered"
        deserialize: (router, context) ->
          return Sp.Shoe.find context.id
        serialize: (router, context) ->
          return {id: context.id}
        connectOutlets: (router, aShoe) ->
          router.get('applicationController').connectOutlet 'greeting', 'salutation', greeting: 'shoes.show'
          router.get('applicationController').connectOutlet('body', 'shoe', aShoe)
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
