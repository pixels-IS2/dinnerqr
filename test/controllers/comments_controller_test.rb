require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get dish_comments_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post dish_comments_url, params: { comment: { body: @comment.body, client_id: @comment.client_id, dish_id: @comment.dish_id } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should update comment" do
    patch dish_comment_url(@comment), params: { comment: { body: @comment.body, client_id: @comment.client_id, dish_id: @comment.dish_id } }
    assert_redirected_to comment_url(@comment)
  end
end
