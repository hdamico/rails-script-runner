module ScriptRunner
  class CLI
    include Directory
    include HistoryManager

    def call
      run_pending_scripts
      add_new_records
    end

    private

    def run_pending_scripts
      pending_files.each do |pending_file|
        system("rails r #{main_directory}/#{pending_file}")
      end
    end
  end
end
