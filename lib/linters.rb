require "linters/version"

module Linters
  class Error < StandardError; end

  class Generator
    attr_reader :dir, :root_files, :config_files
    def initialize
      @dir =  File.dirname(__FILE__)
      @root_files = %w[.eslintrc.json .rubocop.yml .flayignore .reek.yml]
      @config_files = %w[rails_best_practices.yml]
    end

    def self.call
      new.call
    end

    def call
      (root_files + config_files).each do |filename|
        copy_file filename
      end
    end

    def copy_file(filename)
      source = File.join(dir, 'linters', 'configs', filename)
      folder  =  config_files.include?(filename) ? 'config' : ''
      target_dir =  File.join(Dir.pwd, folder)
      create_directory target_dir
      target = File.join(target_dir, filename)
      FileUtils.cp source, target
    end

    def create_directory target_dir
      unless File.directory? target_dir
        FileUtils.mkdir target_dir
      end
    end
  end
end
