Widget = require '../models/widget'

standardCallback = (res) ->
  (err, data) ->
    if err
      res.send err, 400
    else if data
      res.send data, 200
    else
      res.send "", 404

module.exports =
  index:  (req, res) -> Widget.all standardCallback(res)
  new:    (req, res) -> Widget.new standardCallback(res)
  create: (req, res) -> Widget.create req.body, standardCallback(res)
  show:   (req, res) -> Widget.find   req.params.id, standardCallback(res)
  update: (req, res) -> Widget.update req.params.id, req.body, standardCallback(res)
  delete: (req, res) -> Widget.delete req.params.id, standardCallback(res)
