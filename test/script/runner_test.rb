require "test_helper"

class Script::RunnerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Script::Runner::VERSION
  end
end
