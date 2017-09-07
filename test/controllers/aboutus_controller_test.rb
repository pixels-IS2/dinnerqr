require 'test_helper'

class AboutusControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get aboutus_about_url
    assert_response :success
  end

end
