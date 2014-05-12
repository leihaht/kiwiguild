#_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'
#plugin     = require 'plugin'
PostModel = require '../models/PostModel'

PostModel = new PostModel()

module.exports = Backbone.View.extend

  template: require '../template'

  initialize: ->
    #underscoreTest = _.last([0,1,2, 'hi mom!'])
    
    @render()

  render: (post) ->
    
    @$el.html @template
###
      title: ''
      description: 'Starter Gulp + Browserify project equipped to handle the following:'
      tools: [
        'Browserify-shim'
        'Browserify'
        'CoffeeScript'
        'Compass'
        'SASS'
        'Handlebars'
        'Image optimization'
        'LiveReload'
        'Non common-js jquery plugin'
        'Npm backbone'
        'Npm jquery'
        'Underscore (included with Backbone)'
      ]

    plugin()
###