require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
end

task default: :test
task spec: :test

namespace :db do
  task :migrate do
    require_relative 'lib/lotustodo/migrator'
    Todos::Migrator.migrate!
  end
end
