require 'test_helper'

class Hiroak2016GemTest < Minitest::Test
  def setup
	@main = ::Hiroak2016Gem::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Hiroak2016Gem::VERSION
  end

  def test_greeting
	out, err= capture_io do
	puts "Hello!"
  end
	assert_match @main.greeting, out
  end
end
