require 'test_helper'

class RecomendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recomendation = recomendations(:one)
  end

  test "should get index" do
    get recomendations_url
    assert_response :success
  end

  test "should get new" do
    get new_recomendation_url
    assert_response :success
  end

  test "should create recomendation" do
    assert_difference('Recomendation.count') do
      post recomendations_url, params: { recomendation: {  } }
    end

    assert_redirected_to recomendation_url(Recomendation.last)
  end

  test "should show recomendation" do
    get recomendation_url(@recomendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_recomendation_url(@recomendation)
    assert_response :success
  end

  test "should update recomendation" do
    patch recomendation_url(@recomendation), params: { recomendation: {  } }
    assert_redirected_to recomendation_url(@recomendation)
  end

  test "should destroy recomendation" do
    assert_difference('Recomendation.count', -1) do
      delete recomendation_url(@recomendation)
    end

    assert_redirected_to recomendations_url
  end
end
