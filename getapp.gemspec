# frozen_string_literal: true

require_relative "lib/getapp/version"

Gem::Specification.new do |spec|
  spec.name = "getapp"
  spec.version = Getapp::VERSION
  spec.authors = ["chitresh.goyal"]
  spec.email = ["chitreshstar1@gmail.com"]

  spec.summary = "Command line script to import the products. [web scraping/ web crawling]"
  spec.description = "$ getapp_import capterra feed-products/capterra.yaml"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Register a new dependency of your gem
  spec.add_dependency "thor", "~> 1.2.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
