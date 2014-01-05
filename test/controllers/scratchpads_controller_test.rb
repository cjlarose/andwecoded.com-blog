require 'test_helper'

class ScratchpadsControllerTest < ActionController::TestCase
  setup do
    @scratchpad = scratchpads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scratchpads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scratchpad" do
    assert_difference('Scratchpad.count') do
      post :create, scratchpad: { body: @scratchpad.body, title: @scratchpad.title }
    end

    assert_redirected_to scratchpad_path(assigns(:scratchpad))
  end

  test "should show scratchpad" do
    get :show, id: @scratchpad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scratchpad
    assert_response :success
  end

  test "should update scratchpad" do
    patch :update, id: @scratchpad, scratchpad: { body: @scratchpad.body, title: @scratchpad.title }
    assert_redirected_to scratchpad_path(assigns(:scratchpad))
  end

  test "should destroy scratchpad" do
    assert_difference('Scratchpad.count', -1) do
      delete :destroy, id: @scratchpad
    end

    assert_redirected_to scratchpads_path
  end
end
