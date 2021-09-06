require "script_runner"
require "rails"

module ScriptRunner
  class Railtie < Rails::Railtie
    railtie_name :script_runner

    rake_tasks do
      path = File.expand_path(__dir__)
      load "#{path}/tasks/script_runner/execute.rake"
    end
  end
end
