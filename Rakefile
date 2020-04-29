require "bundler/gem_tasks"

namespace :linters do
  desc 'Copy the configuration files to the project'
  task :generate do
    Linters::Generator.call
  end
end
