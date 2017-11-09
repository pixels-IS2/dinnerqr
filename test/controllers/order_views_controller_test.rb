require 'test_helper'

class OrderViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get currentOrderClient" do
    get order_views_currentOrderClient_url
    assert_response :redirect 
  end

  test "should get ordersChef" do
    get order_views_ordersChef_url
    assert_response :success
  end
end
