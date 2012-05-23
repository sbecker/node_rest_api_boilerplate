Widget = require '../models/widget'

standardCallback = (res) ->
  (result) ->
    if result && result.data
      res.send JSON.stringify(result.data), 200
    else if result && result.error
      res.send JSON.stringify(result), 400
    else
      res.send "", 204

module.exports =

  index: (req, res) ->
    Widget.all standardCallback(res)

  new: (req, res) ->
    Widget.new standardCallback(res)

  create: (req, res) ->
    Widget.create req.body, standardCallback(res)

  show: (req, res) ->
    Widget.find req.params.id, standardCallback(res)

  update: (req, res) ->
    Widget.update req.params.id, req.body, standardCallback(res)

  delete: (req, res) ->
    Widget.delete req.params.id, standardCallback(res)

