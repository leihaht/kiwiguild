Backbone = require 'backbone'

module.exports = Backbone.Model.extend
  defaults:
    title: ''
    created: ''
    
  initialize: ->
    console.log "test post model"