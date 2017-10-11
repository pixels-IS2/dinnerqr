require 'test_helper'

class OrderViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get currentOrderClient" do
    get order_views_currentOrderClient_url
    assert_response :success
  end

  test "should get historyClient" do
    get order_views_historyClient_url
    assert_response :success
  end

  test "should get ordersChef" do
    get order_views_ordersChef_url
    assert_response :success
  end

  test "should get orderWaiter" do
    get order_views_orderWaiter_url
    assert_response :success
  end

  test "should get sales" do
    get order_views_sales_url
    assert_response :success
  end

end
