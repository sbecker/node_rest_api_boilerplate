# A loose wrapper around the Mongoose model in order to
# - set defaults
# - make sure expected attributes are set and don't get entirely removed
# - set created_at and updated_at dates

mongoose = require 'mongoose'
mongoose.connect process.env.MONGOHQ_URL || 'mongodb://localhost/node_rest_api_boilerplate_' + (process.env.NODE_ENV || "development")

# Define some validation functions for use in schema
validateIsNotBlank = (v) -> v != null && v.length > 0

Widget = mongoose.model "Widget", new mongoose.Schema
  name:
    type: String
    validate: [validateIsNotBlank, 'cannot be blank']
  description:
    type: String
    validate: [validateIsNotBlank, 'cannot be blank']
  created_at: Date
  updated_at: Date


module.exports =
  new: (callback) ->
    obj =
      name: ""
      description: ""
    callback null, obj

  find: (id, callback) ->
    Widget.findById id, callback

  create: (obj, callback) ->
    widget = new Widget
      name: obj.name || ""
      description: obj.description || ""
      created_at: new Date()
      updated_at: new Date()
    widget.save callback

  all: (callback) ->
    Widget.find callback

  update: (id, obj, callback) ->
    Widget.findById id, (err, widget) ->
      if err || widget == null
        callback err, widget
      else
        widget.name        = obj.name        if obj.name != undefined
        widget.description = obj.description if obj.description != undefined
        widget.updated_at  = new Date()
        widget.save callback

  delete: (id, callback) ->
    Widget.findById id, (err, widget) ->
      if err or widget == null
        callback err, widget
      else
        widget.remove callback
