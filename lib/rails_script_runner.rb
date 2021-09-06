module RailsScriptRunner
  autoload :CLI, "rails_script_runner/cli"
  autoload :VERSION, "rails_script_runner/version"
  autoload :Directory, "rails_script_runner/directory"
  autoload :HistoryManager, "rails_script_runner/history_manager"
  autoload :Release, "rails_script_runner/release"
  require "rails_script_runner/railtie" if defined?(Rails)
end
