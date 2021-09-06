require "test_helper"

class RailsScriptRunnerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RailsScriptRunner::VERSION
  end
end
