require "rails_script_runner"
require "rails"

module RailsScriptRunner
  class Railtie < Rails::Railtie
    railtie_name :rails_script_runner

    rake_tasks do
      path = File.expand_path(__dir__)
      load "#{path}/tasks/rails_script_runner/execute.rake"
    end
  end
end
