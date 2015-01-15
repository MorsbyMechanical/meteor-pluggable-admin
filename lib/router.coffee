adminSub = Meteor.subscribe 'adminViews'

Router.map ->
  @route 'admin',
    path: '/admin'
    layoutTemplate: 'adminLayoutTemplate'
    action: ->
      @wait adminSub
      @render 'admin'
    data: ->
      return AdminViews.find({})