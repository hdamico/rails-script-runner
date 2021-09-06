require_relative "lib/script_runner/version"

Gem::Specification.new do |spec|
  spec.name = "script_runner"
  spec.version = ScriptRunner::VERSION
  spec.authors = ["Hernan D'Amico"]
  spec.email = ["hernan.damico67@gmail.com"]

  spec.summary = ""
  spec.homepage = "https://github.com/hdamico/script-runner"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/hdamico/script-runner/issues",
    "changelog_uri" => "https://github.com/hdamico/script-runner/releases",
    "source_code_uri" => "https://github.com/hdamico/script-runner",
    "homepage_uri" => spec.homepage
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.require_paths = ["lib"]
end
