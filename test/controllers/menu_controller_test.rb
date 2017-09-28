require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get menu_menu_url
    assert_response :success
  end

end
