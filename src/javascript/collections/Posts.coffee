Backbone = require 'backbone'
Post = require '../models/Post'

module.exports = Backbone.Collection.extend
  model: Post