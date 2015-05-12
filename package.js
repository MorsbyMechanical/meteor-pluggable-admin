Package.describe({
  name: 'digilord:pluggable-admin-view',
  summary: 'pluggable administration system',
  version: '1.0.2',
  git: "https://github.com/morsbymechanical/meteor-pluggable-admin"
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use(['meteor-platform', 'less@1.0.11']);
  api.use(['reactive-var@1.0.3'], ['client', 'server']);
  api.use(['iron:router@1.0.6'], ['client', 'server']);
  api.use(['mrt:moment@2.8.1'], ['client', 'server']);
  api.use(['alanning:roles@1.2.13'], ['client', 'server']);
  api.use(['fortawesome:fontawesome@4.2.0_2'], ['client']);
  api.use(['coffeescript'], ['client', 'server']);
  api.use(['digilord:sugarjs@1.4.1'], ['client', 'server']);
  api.use('meteoric:ionic-sass@0.1.8', 'client');
  api.use('meteoric:ionicons-sass@0.1.5', 'client');

  api.addFiles([
    'collections/admin-view.coffee',
    'lib/admin-view.coffee'
    ], ['client', 'server']);

  api.addFiles([
    'server/publications.coffee'
    ], 'server');

  api.addFiles([
    'lib/router.coffee',
    'client/admin.html',
    'client/admin.less',
    'client/admin.coffee'
    ],'client');

  // if(api.export)
  api.export('AdminView');

});
