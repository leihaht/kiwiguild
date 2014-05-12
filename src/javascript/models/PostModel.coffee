Backbone = require 'backbone'

PostModel = Backbone.Model.extend
  defaults:
    title: ''
    created: ''
    
  initialize: ->
    console.log "test post model"