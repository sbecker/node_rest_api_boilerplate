module.exports =
  new: (callback) ->
    obj =
      name: ""
      description: ""
    callback obj

  find: (id, callback) ->
    if id is "1"
      result =
        data:
          id: id
          name: "Screwdriver"
          description: "Flathead screwdriver, good for turning screws."
          created_at: new Date()
          updated_at: new Date()
    else
      result =
        error:
          code: "No widget could be found with id #{id}"

    callback result

  create: (obj, callback) ->
    callback obj

  all: (callback) ->
    callback data: [{"foo":"bar"}]

  update: (id, obj, callback) ->
    callback obj

  delete: (id, callback) ->
    callback()