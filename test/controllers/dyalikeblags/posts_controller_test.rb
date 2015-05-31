require 'test_helper'

module Dyalikeblags
  class PostsControllerTest < ActionController::TestCase
    setup do
      @post = posts(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:posts)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create post" do
      assert_difference('Post.count') do
        post :create, post: { cached_votes_down: @post.cached_votes_down, cached_votes_score: @post.cached_votes_score, cached_votes_total: @post.cached_votes_total, cached_votes_up: @post.cached_votes_up, cached_weighted_average: @post.cached_weighted_average, cached_weighted_score: @post.cached_weighted_score, cached_weighted_total: @post.cached_weighted_total, content: @post.content, image: @post.image, title: @post.title, user_id: @post.user_id }
      end

      assert_redirected_to post_path(assigns(:post))
    end

    test "should show post" do
      get :show, id: @post
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @post
      assert_response :success
    end

    test "should update post" do
      patch :update, id: @post, post: { cached_votes_down: @post.cached_votes_down, cached_votes_score: @post.cached_votes_score, cached_votes_total: @post.cached_votes_total, cached_votes_up: @post.cached_votes_up, cached_weighted_average: @post.cached_weighted_average, cached_weighted_score: @post.cached_weighted_score, cached_weighted_total: @post.cached_weighted_total, content: @post.content, image: @post.image, title: @post.title, user_id: @post.user_id }
      assert_redirected_to post_path(assigns(:post))
    end

    test "should destroy post" do
      assert_difference('Post.count', -1) do
        delete :destroy, id: @post
      end

      assert_redirected_to posts_path
    end
  end
end
