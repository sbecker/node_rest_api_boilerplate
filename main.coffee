express = require 'express'
routes  = require './config/routes'

app = express.createServer()

app.use express.logger()
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.static(__dirname + '/public')

port = process.env.PORT     or 3000
env  = process.env.NODE_ENV or 'development'

routes.set app

app.listen port, ->
  console.log "Running in #{env} mode, listening on #{port}"
