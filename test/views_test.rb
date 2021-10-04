require "test_helper"

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
