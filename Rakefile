require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rdoc/task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

RDoc::Task.new do |rd|
  rd.main = "README.md"
  rd.rdoc_dir = "doc"
  rd.rdoc_files.include("README.md", "lib/*.rb", "lib/**/*.rb")
end
