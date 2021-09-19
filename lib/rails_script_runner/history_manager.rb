module RailsScriptRunner
  module HistoryManager
    def executed_scripts
      history_file["executed_scripts"]
    end

    def pending_files
      @pending_files ||= scripts_filename - executed_scripts
    end

    private

    HISTORY_FILENAME = "scripts_history.json".freeze
    HISTORY_CONTENT = '{ "executed_scripts": [] }'.freeze

    def add_new_records
      executed_scripts.concat pending_files
      write_history_file
    end

    def write_history_file
      File.open(script_history_file_path, "w") do |f|
        f.write JSON.pretty_generate(history_file)
      end
    end

    def history_file
      @history_file ||= find_or_create_history_file
    end

    def find_or_create_history_file
      unless history_file_exists?
        create_scripts_dir unless main_directory_exists?
        create_file(HISTORY_FILENAME, HISTORY_CONTENT)
      end
      JSON.parse(read_history_file)
    end

    def history_file_exists?
      !script_history_file_path.nil?
    end
  end
end

require "json"
