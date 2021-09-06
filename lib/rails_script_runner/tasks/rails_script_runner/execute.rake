require "rails_script_runner"

namespace :rails_script_runner do
  task execute: :environment do
    RailsScriptRunner::CLI.new.call
  end
end
