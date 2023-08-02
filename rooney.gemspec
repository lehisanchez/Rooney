# frozen_string_literal: true

require_relative "lib/rooney/version"

Gem::Specification.new do |spec|
  spec.name = "rooney"
  spec.version = Rooney::VERSION
  spec.authors = ["Lehi Sanchez"]
  spec.email = ["17449+lehisanchez@users.noreply.github.com"]

  spec.summary = "A Ruby gem to interface with api-football.com."
  spec.description = "A Ruby gem to interface with api-football.com. This gem is only compatible with v3 of the api."
  spec.homepage = "https://github.com/lehisanchez/rooney"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lehisanchez/rooney"
  spec.metadata["changelog_uri"] = "https://github.com/lehisanchez/rooney"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_development_dependency "faker", "~> 3.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_development_dependency "rubocop-performance", "~> 1.18"
  spec.add_development_dependency "rubocop-rspec", "~> 2.23"
  spec.add_development_dependency "simplecov", "~> 0.22.0"
  spec.add_development_dependency "simplecov-cobertura", "~> 2.1"
  spec.add_development_dependency "webmock", "~> 3.18"
  spec.add_development_dependency "yard", "~> 0.9.34"
end
