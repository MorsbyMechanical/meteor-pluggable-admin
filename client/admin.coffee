Template.adminLeftMenu.onCreated ->
  this.subscribe 'adminViews'

Template.ionicLeftPluggableAdminMenu.onCreated ->
  this.subscribe 'adminViews'

Template.adminLeftMenu.helpers
  adminPackages: () ->
    return AdminViews.find()

Template.ionicLeftPluggableAdminMenu.helpers
  adminPackages: ->
    return AdminViews.find().fetch()

Template.ionicLeftPluggableAdminMenu.events
  'click .adminViewPackage': (event, template) ->
    event.preventDefault()
    Session.set 'adminViewTemplate', this.template

Template.adminLeftMenu.events
  'click .adminViewPackage': (event, template) ->
    event.preventDefault()
    Session.set 'adminViewTemplate', this.template

Template.adminContent.helpers
  adminViewTemplate: () ->
    return Session.get 'adminViewTemplate'

Template.ionicAdminContent.helpers
  adminViewTemplate: () ->
    return Session.get 'adminViewTemplate'

Template.ionicAdminTemplate.helpers
  barHeaderColor: ->
    Meteor.settings.public.barHeaderColor or 'bar-dark'
