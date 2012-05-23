widgets     = require '../app/controllers/widgets'
contentType = require './contentType'

module.exports =
  set: (app) ->

    # Widgets
    app.get    '/widgets',     contentType.json(), widgets.index
    app.get    '/widgets/new', contentType.json(), widgets.new
    app.post   '/widgets',     contentType.json(), widgets.create
    app.get    '/widgets/:id', contentType.json(), widgets.show
    app.put    '/widgets/:id', contentType.json(), widgets.update
    app.delete '/widgets/:id', contentType.json(), widgets.delete

