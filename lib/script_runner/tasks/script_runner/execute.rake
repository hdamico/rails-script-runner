require "script_runner"

namespace :script_runner do
  task :execute do
    ScriptRunner::CLI.new.call
  end
end
