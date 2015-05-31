require 'test_helper'

module Dyalikeblags
  class CommentsControllerTest < ActionController::TestCase
    setup do
      @comment = comments(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:comments)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create comment" do
      assert_difference('Comment.count') do
        post :create, comment: { cached_votes_down: @comment.cached_votes_down, cached_votes_score: @comment.cached_votes_score, cached_votes_total: @comment.cached_votes_total, cached_votes_up: @comment.cached_votes_up, cached_weighted_average: @comment.cached_weighted_average, cached_weighted_score: @comment.cached_weighted_score, cached_weighted_total: @comment.cached_weighted_total, comment: @comment.comment, post_id: @comment.post_id, user_id: @comment.user_id }
      end

      assert_redirected_to comment_path(assigns(:comment))
    end

    test "should show comment" do
      get :show, id: @comment
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @comment
      assert_response :success
    end

    test "should update comment" do
      patch :update, id: @comment, comment: { cached_votes_down: @comment.cached_votes_down, cached_votes_score: @comment.cached_votes_score, cached_votes_total: @comment.cached_votes_total, cached_votes_up: @comment.cached_votes_up, cached_weighted_average: @comment.cached_weighted_average, cached_weighted_score: @comment.cached_weighted_score, cached_weighted_total: @comment.cached_weighted_total, comment: @comment.comment, post_id: @comment.post_id, user_id: @comment.user_id }
      assert_redirected_to comment_path(assigns(:comment))
    end

    test "should destroy comment" do
      assert_difference('Comment.count', -1) do
        delete :destroy, id: @comment
      end

      assert_redirected_to comments_path
    end
  end
end
