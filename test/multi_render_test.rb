require "test_helper"

class MultiRenderTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert MultiRender::VERSION
  end
  def test_to_squawk_prepends_the_word_squawk
    assert_equal "squawk! Hello World", "Hello World".to_squawk
  end
end
