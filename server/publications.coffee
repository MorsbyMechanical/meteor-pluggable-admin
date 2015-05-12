Meteor.publish 'adminViews', (options) ->
  # define some defaults here
  search = {}
  defaultOptions =
    sort:
      displayName: 1

  if Object.isObject options
    if options.search
      Object.merge(search, options.search)

    if options.options
      Object.merge(defaultOptions, options.options)

  else
    options = defaultOptions

  _docs = AdminViews.find(search, options)

  return _docs
