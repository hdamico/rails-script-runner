module RailsScriptRunner
  class CLI
    include Directory
    include HistoryManager
    include Template

    def execute_scripts
      require_pending_files
      run_pending_scripts
      add_new_records
    end

    def create_new_script(filename)
      generate_script(filename)
    end

    private

    def require_pending_files
      pending_files.each do |f|
        require "#{main_directory}/#{f}"
      end
    end

    def run_pending_scripts
      ::RailsScriptRunner::Executor.descendants.each(&:run)
    end

    def pending_files
      @pending_files ||= scripts_filename - executed_scripts
    end
  end
end
