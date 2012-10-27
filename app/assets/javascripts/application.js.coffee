# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require sp
window.Sp = Ember.Application.create
  ready: ->
    console.log "Created Sp namespace"

  CarsView: Em.View.extend
    classNames: 'derp-view'
    templateName: 'cars'
    goToShoes: Ember.Route.transitionTo('root.shoes')

  CarsController: Em.ArrayController.extend()

  ShoesView: Em.View.extend
    classNames: 'derp-view'
    templateName: 'shoes'
  ShoesController: Em.ArrayController.extend()

  SalutationView: Em.View.extend
    templateName: 'salutation'
  SalutationController: Em.ObjectController.extend()

  TraversalView: Em.View.extend
    templateName: 'traversal'
  TraversalController: Em.ObjectController.extend()






#= require_tree .
