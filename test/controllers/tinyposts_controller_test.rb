require 'test_helper'

class TinypostsControllerTest < ActionController::TestCase
  setup do
    @tinypost = tinyposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tinyposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tinypost" do
    assert_difference('Tinypost.count') do
      post :create, tinypost: { content: @tinypost.content, user_id: @tinypost.user_id }
    end

    assert_redirected_to tinypost_path(assigns(:tinypost))
  end

  test "should show tinypost" do
    get :show, id: @tinypost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tinypost
    assert_response :success
  end

  test "should update tinypost" do
    patch :update, id: @tinypost, tinypost: { content: @tinypost.content, user_id: @tinypost.user_id }
    assert_redirected_to tinypost_path(assigns(:tinypost))
  end

  test "should destroy tinypost" do
    assert_difference('Tinypost.count', -1) do
      delete :destroy, id: @tinypost
    end

    assert_redirected_to tinyposts_path
  end
end
