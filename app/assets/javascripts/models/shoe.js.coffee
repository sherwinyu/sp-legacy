Sp.Shoe = Ember.Object.extend()
  


Sp.Shoe.reopen
  id: null
  name: 'unnamed shoe'

Sp.Shoe.reopenClass
  _listOfShoes: Em.A()
  _stubDataSource: [ {id: 'rainbow', name: 'Rainbow sandals', price: 50.00, description: "dools"}
  , {id: 'strappy', name: 'strappy shoes', price: 30.00, description: "dools", imageSrc: 'http://placehold.it/350x150' } ]
  all: ->
    allShoes = this._listOfShoes
    # stub on ajax call, like a jquery,ajax might have done...
    setTimeout =>
        allShoes.clear()
        allShoes.pushObjects @_stubDataSource
        console.log('critting!', allShoes)
        console.log('critting!', @_stubDataSource)
        console.log('critting!', @)
      , 2000
    return  @_listOfShoes

  find: (id) ->
    @_stubDataSource.findProperty('id', id)
 
  serialize: (router, context) ->
    return {id: context.id}

  deserialize: (router, context) ->
    return Sp.Shoe.find context.id



            

console.log 'shoe loaded'
