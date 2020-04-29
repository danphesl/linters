require_relative '../../lib/linters/generator'
namespace :linters do
  desc 'Copy the configuration files to the project'
  task :generate do
    Linters::Generator.call
  end
end
