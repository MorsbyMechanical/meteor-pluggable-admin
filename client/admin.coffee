Template.adminLeftMenu.onCreated ->
  this.subscribe 'adminViews'

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

Template.ionicAdminTemplate.helpers
  barHeaderColor: ->
    Meteor.settings.public.barHeaderColor or 'bar-dark'
