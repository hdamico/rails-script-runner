module ScriptRunner
  module HistoryManager
    def executed_scripts
      history_file["executed_scripts"]
    end

    def pending_files
      @pending_files ||= scripts_filename - executed_scripts
    end

    private

    def add_new_records
      executed_scripts.concat pending_files
      write_history_file
    end

    def write_history_file
      File.open(script_history_file_path, "w") { |f| f.write JSON.pretty_generate(history_file) }
    end

    def history_file
      @history_file ||= find_or_create_history_file
    end

    def find_or_create_history_file
      create_history_file unless history_file_exists?
      JSON.parse(read_history_file)
    end

    def history_file_exists?
      !script_history_file_path.nil?
    end
  end
end

require "json"
