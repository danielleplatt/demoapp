require 'test_helper'

class TweensControllerTest < ActionController::TestCase
  setup do
    @tween = tweens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tween" do
    assert_difference('Tween.count') do
      post :create, tween: { status: @tween.status, user_id: @tween.user_id }
    end

    assert_redirected_to tween_path(assigns(:tween))
  end

  test "should show tween" do
    get :show, id: @tween
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tween
    assert_response :success
  end

  test "should update tween" do
    patch :update, id: @tween, tween: { status: @tween.status, user_id: @tween.user_id }
    assert_redirected_to tween_path(assigns(:tween))
  end

  test "should destroy tween" do
    assert_difference('Tween.count', -1) do
      delete :destroy, id: @tween
    end

    assert_redirected_to tweens_path
  end
end
