require "test_helper"

class ActsAsYaffleTest < ActiveSupport::TestCase
  def test_a_hickwalls_yaffle_text_field_should_be_last_squawk
    assert_equal "last_squawk", Hickwall.yaffle_text_field
  end

  def test_a_wickwalls_yaffle_text_field_should_be_last_tweet
    assert_equal "last_tweet", Wickwall.yaffle_text_field
  end

  def test_hickwalls_squawk_should_populate_last_squawk
    hickwall = Hickwall.new
    hickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", hickwall.last_squawk
  end

  def test_wickwalls_squawk_should_populate_last_tweet
    wickwall = Wickwall.new
    wickwall.squawk("Hello World")
    assert_equal "squawk! Hello World", wickwall.last_tweet
  end
end

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_pages_index_url
    assert_equal "asd", "asd"
    assert_select "title", "Dummy"

    assert_response :success
  end

  test "should have StaticPages#index in h1" do
    get static_pages_index_url
    assert_select "h1", "StaticPages#index"
    assert_select "h2", "PRUEBA"

    # assert_select "ul.navigation" do
    #   assert_select "li.menu_item"
    # end

  end
end
