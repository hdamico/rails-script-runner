require_relative "lib/rails_script_runner/version"

Gem::Specification.new do |spec|
  spec.name = "rails_script_runner"
  spec.version = RailsScriptRunner::VERSION
  spec.authors = ["Hernan D'Amico"]
  spec.email = ["hernan.damico67@gmail.com"]

  spec.summary = ""
  spec.homepage = "https://github.com/hdamico/rails-script-runner"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/hdamico/rails-script-runner/issues",
    "changelog_uri" => "https://github.com/hdamico/rails-script-runner/releases",
    "source_code_uri" => "https://github.com/hdamico/rails-script-runner",
    "homepage_uri" => spec.homepage
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {lib}/**/*]).reject { |f| File.directory?(f) }
  spec.require_paths = ["lib"]
end
