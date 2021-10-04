require "test_helper"

class MultiRenderTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert MultiRender::VERSION
  end
  def test_to_mr
    multi = MR.new
    multi.add(:prueba, "shared/test", {foo: 'bar', lorem: 'ipsum'})
    internal_hash = multi.get_data
    assert_equal(internal_hash["prueba"][:data_array], {foo: 'bar', lorem: 'ipsum'})

  end
end
