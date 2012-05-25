GLOBAL.mongoose = require 'mongoose'
mongoose.connect process.env.MONGOHQ_URL || 'mongodb://localhost/node_rest_api_boilerplate_' + (process.env.NODE_ENV || "development")

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
