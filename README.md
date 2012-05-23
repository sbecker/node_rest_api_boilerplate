This is an example Node.js application that can supply a full REST API for use by Mobile apps, JS heavy client-side apps using Backbone.js, etc.

Project structure is similar to a rails application:

- app/controllers/widgets: Widgets controller functions
- app/models/widget: Widgets model functions
- config/routes: Maps controller methods to HTTP methods and paths
- config/contentType: routing middleware for setting content type to "application/json"
- public/index.html: A simple static HTML page to serve at the root URL
- main: The main entry point for launching the app

Run the app:

- Run "npm install" in the project directory to install dependencies
- Run "coffee main.coffee" to run the app. Will run on port 3000 by default.

ToDos:

- Wire up model to send/receive data from a persistent data store (most likely Postgres)
- Implement basic authentication
- Test the app with Mocha

Libraries:

- Express: Web Framework
- CoffeeScript: Cleaner JavaScript

