_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'
#plugin     = require 'plugin'
Posts = require '../collections/Posts'
Post = require '../models/Post'

module.exports = Backbone.View.extend

  template: require '../template'

  initialize: ->
    #underscoreTest = _.last([0,1,2, 'hi mom!'])
    @collection = new Posts()
    @render()

  render: ->
    post = new Post()
    post.set
      title: 'post title here'
      created: '2014-05-12'
    
    @collection.add post
    
    @$el.html @template
      postcontainer: 'test!!!!!!!!'
      
    _(@collection.models).each (post) ->
      $('ul.posts').append('<li>' + post.get('title') + '</li>')
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