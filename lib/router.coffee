adminLayout = Meteor.settings.public.pluggableAdmin?.layout or 'adminLayoutTemplate'
adminView = Meteor.settings.public.pluggableAdmin?.view or 'admin'


Router.map ->
  @route 'admin',
    path: '/admin'
    layoutTemplate: adminLayout
    action: ->
      @render adminView
