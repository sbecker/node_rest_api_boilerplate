exports.json = () ->
  (req, res, next) ->
    res.header "Content-Type", "application/json"
    next()
