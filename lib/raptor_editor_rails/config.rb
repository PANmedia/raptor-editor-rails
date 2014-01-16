require "yaml"

module RaptorEditorRails
  class Config
    cattr_accessor :config

    class << self
      def load(path, set = "normal")
        @@config = YAML.load_file(path)[set]
        self
      end

      def query
        keys = [
          config["plugins"].collect   { |v| "p-#{v}" },
          config["libraries"].collect { |v| "l-#{v}" },
          config["locales"].collect   { |v| "i-#{v}" },
          config["options"].collect   { |v| "s-#{v}" },
          config["build"],
        ].flatten

        options = Hash[ keys.collect { |k| [k, "1"] } ]
        options["theme"] = config["theme"]
        options.to_query
      end
    end
  end
end
