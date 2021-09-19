require "rails_script_runner"
require "rails"

module RailsScriptRunner
  class Railtie < Rails::Railtie
    railtie_name :rails_script_runner

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end
