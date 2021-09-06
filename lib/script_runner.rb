require 'byebug'
module ScriptRunner
  autoload :CLI, "script_runner/cli"
  autoload :VERSION, "script_runner/version"
  autoload :Directory, "script_runner/directory"
  autoload :HistoryManager, "script_runner/history_manager"
end
