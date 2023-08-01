# frozen_string_literal: true

require_relative "lib/fin_tech/version"

Gem::Specification.new do |spec|
  spec.name     = "fin_tech"
  spec.version  = FinTech::VERSION
  spec.authors  = ["Dewayne VanHoozer"]
  spec.email    = ["dvanhoozer@gmail.com"]

  spec.summary                = "A collection of methods to support financial technical analysis."
  spec.description            = spec.summary
  spec.homepage               = "https://github.com/MadBomber/fin_tech"
  spec.license                = "MIT"
  spec.required_ruby_version  = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]     = spec.homepage
  spec.metadata["source_code_uri"]  = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end

  # spec.bindir         = "bin"
  # spec.executables    = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  
  spec.require_paths  = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
