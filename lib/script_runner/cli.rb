module ScriptRunner
  class CLI
    include Directory
    include HistoryManager

    def call
      require_pending_files
      run_pending_scripts
      add_new_records
    end

    private

    def require_pending_files
      pending_files.each do |f|
        require "#{main_directory}/#{f}"
      end
    end

    def run_pending_scripts
      ::ScriptRunner::Release.descendants.each(&:run)
    end

    def pending_files
      @pending_files ||= scripts_filename - executed_scripts
    end
  end
end
