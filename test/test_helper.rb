$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "script_runner"

require "minitest/autorun"
Dir[File.expand_path("support/**/*.rb", __dir__)].sort.each { |rb| require(rb) }
