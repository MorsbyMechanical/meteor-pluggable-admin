Package.describe({
  name: 'nikktto:admin-view',
  summary: 'Nikktto pluggable administration.',
  version: '1.0.0',
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use(['meteor-platform@1.2.1', 'less@1.0.11']);
  api.use(['reactive-var@1.0.3'], ['client', 'server']);
  api.use(['iron:router@1.0.6'], ['client', 'server']);
  api.use(['mrt:moment@2.8.1'], ['client', 'server']);
  api.use(['alanning:roles@1.2.13'], ['client', 'server']);
  api.use(['fortawesome:fontawesome@4.2.0_2'], ['client']);
  api.use(['coffeescript'], ['client', 'server']);
  api.use(['digilord:sugarjs@1.4.1'], ['client', 'server']);

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