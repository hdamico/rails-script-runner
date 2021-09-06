require "test_helper"

class ScriptRunnerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ScriptRunner::VERSION
  end
end
