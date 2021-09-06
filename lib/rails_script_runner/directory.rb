module RailsScriptRunner
  module Directory
    private

    def script_history_file_path
      @script_history_file_path ||= dir_files.find { |f| f.end_with?("scripts_history.json") }
    end

    def scripts_filename
      dir_files.map { |f| f.match(%r{[^/]+.rb$}).to_s }.reject(&:empty?)
    end

    def main_directory
      @main_directory ||= File.expand_path("./lib/scripts")
    end

    def read_history_file
      File.read(script_history_file_path)
    end

    def dir_files
      Dir["#{main_directory}/*"]
    end

    def create_history_file
      body = '{ "executed_scripts": [] }'
      File.write("#{main_directory}/scripts_history.json", body)
    end
  end
end
