widgets     = require '../app/controllers/widgets'

module.exports =
  set: (app) ->

    # Widgets
    app.get    '/widgets',     widgets.index
    app.get    '/widgets/new', widgets.new
    app.post   '/widgets',     widgets.create
    app.get    '/widgets/:id', widgets.show
    app.put    '/widgets/:id', widgets.update
    app.delete '/widgets/:id', widgets.delete

