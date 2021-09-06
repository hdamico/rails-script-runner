require File.expand_path(Rails.root.join("config", "environment"), __dir__)

module ScriptRunner
  class Release
    def self.run
      new.run
    end

    def self.descendants
      ObjectSpace.each_object(Class).select { |klass| klass < self }
    end
  end
end
