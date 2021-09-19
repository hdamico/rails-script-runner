module RailsScriptRunner
  module Template
    def generate_script(filename)
      formatted_filename = format_filename(filename)
      create_file(formatted_filename, content(formatted_filename))
    end

    private

    INHERITED_CLASS = Executor

    def content(filename)
      <<~TEMPLATE
        class #{class_name(filename)} < #{INHERITED_CLASS}
          def run
          end
        end
      TEMPLATE
    end

    def class_name(filename)
      filename.chomp(".rb").camelize
    end

    def format_filename(filename)
      return "#{filename}.rb" unless filename.end_with?(".rb")

      filename
    end
  end
end
