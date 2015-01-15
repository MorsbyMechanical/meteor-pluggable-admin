AdminView = 
  add: (doc) ->
    errors = []
    if not Object.isObject(doc)
      console.error "You need to pass an object to AdminView.add(...)."

    # Make sure the doc has all the right fields

    if not doc.moduleName?
      error = 
        type: 500
        msg: "No moduleName was passed into the insert. Please check your admin package definition."
      errors.push error

    if doc.moduleName? and not check(doc.moduleName, String)
      error =
        type: 500
        msg: "moduleName should be a string."

    if not doc.template?
      error = 
        type: 500
        msg: "No template was defined for #{doc.moduleName}. Please check your admin package definition."
    
    if doc.template? and not check(doc.template, String)
      error =
        type: 500
        msg: "template should be a string."


    if not doc.displayName?
      displayName = doc.moduleName.spacify().capitalize(true)
      console.warn "Using #{displayName} from the string #{doc.moduleName} because a displayName was not specified."
      doc.displayName = displayName
      
    if not doc.icon?
      console.warn "No icon was provided for #{doc.moduleName}. Using a default icon."
      doc.icon = "fa-cog"

    _adminView = AdminViews.findOne({moduleName: doc.moduleName})

    if _adminView?
      console.error "#{doc.moduleName} already exists in this application."
      return [true, null]
    else
      AdminViews.insert(doc)

  set: (viewName) ->
    Session.set 'adminViewTemplate', viewName
