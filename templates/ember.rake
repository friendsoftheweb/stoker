namespace :ember do
  task :build do
    exec [
      'cd frontend',
      'npm install',
      './node_modules/bower/bin/bower install',
      './node_modules/ember-cli/bin/ember build --environment=production --output-path=../public/frontend',
      'rm -rf ./node_modules',
      'rm -rf ./bower_components'
    ].join(' && ')
  end
end
