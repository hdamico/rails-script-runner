require "rails_script_runner"

namespace :rails_script_runner do
  task :generate, [:filename] => :environment do |_t, args|
    RailsScriptRunner::CLI.new.create_new_script(args[:filename])
  end
end
