# frozen_string_literal: true

require_relative "lib/gem_jvazquezolivares/version"

Gem::Specification.new do |spec|
  spec.name = "gem_jvazquezolivares"
  spec.version = GemJvazquezolivares::VERSION
  spec.authors = ["Javier Vazquez"]
  spec.email = ["jvazquezolivares@gmail.com"]

  spec.summary = "resumen de la gema jvazquezolivares"
  spec.description = "Descripción de la gema jvazquezolivares"
  spec.homepage = "https://www.google.com"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ["lib/gem_jvazquezolivares.rb", "lib/gem_jvazquezolivares/version.rb"]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
