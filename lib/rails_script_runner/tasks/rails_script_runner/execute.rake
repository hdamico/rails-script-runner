require "rails_script_runner"

namespace :rails_script_runner do
  task execute: :environment do
    RailsScriptRunner::CLI.new.execute_scripts
  end
end
