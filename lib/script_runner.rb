module ScriptRunner
  autoload :CLI, "script_runner/cli"
  autoload :VERSION, "script_runner/version"
  autoload :Directory, "script_runner/directory"
  autoload :HistoryManager, "script_runner/history_manager"
  autoload :Release, "script_runner/release"
  require "script_runner/railtie" if defined?(Rails)
end
