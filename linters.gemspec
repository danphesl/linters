require_relative 'lib/linters/version'

Gem::Specification.new do |spec|
  spec.name          = "linters"
  spec.version       = Linters::VERSION
  spec.authors       = ["subzekt"]
  spec.email         = ["poudel.subas089@gmail.com"]

  spec.summary       = "Linters for Ruby on Rails with React Js"
  spec.description   = "Configurations for rubocop, flay, reek, rails_best_practices"
  spec.homepage      = "https://github.com/danphesl/linters"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/danphesl/linters"
  spec.metadata["changelog_uri"] = "https://github.com/danphesl/linters/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
