_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'

module.exports = Backbone.View.extend

  tagName: 'tr'
  template: require '../templates/postTemplate'

  initialize: ->
    @render()

  render: ->
    @$el.html @template @model.toJSON()