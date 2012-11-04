Sp.PomController = Ember.ObjectController.extend
    init: ->
      this.set('content', Sp.store.find(Sp.Pom, 1))

