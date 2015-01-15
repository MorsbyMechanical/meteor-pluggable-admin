Template.adminLeftMenu.helpers
  adminPackages: () ->
    return AdminViews.find()


Template.adminLeftMenu.events
  'click .adminViewPackage': (event, template) ->
    event.preventDefault()
    Session.set 'adminViewTemplate', this.template

Template.adminContent.helpers
  adminViewTemplate: () ->
    return Session.get 'adminViewTemplate'