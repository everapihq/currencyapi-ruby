# frozen_string_literal: true

require_relative "lib/currencyapi/version"

Gem::Specification.new do |spec|
  spec.name = "currencyapi"
  spec.version = Currencyapi::VERSION
  spec.authors = ["Benedikt Stoy"]
  spec.email = ["benedikt.stoy@everapi.com"]
  spec.summary = "A ruby wrapper for currencyapi.com's API"
  spec.description = "The perfect tool to handle your exchange rate conversions. Our API helps you with current and historical foreign exchanges rates. Stop worrying about uptime & outdated data."
  spec.homepage = "https://currencyapi.com/"
  spec.license = "MIT"
  spec.extra_rdoc_files = ['README.md']
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/everapihq/currencyapi-ruby"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rest-client"
  spec.add_dependency "json"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
