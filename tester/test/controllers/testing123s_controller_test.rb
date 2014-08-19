require 'test_helper'

class Testing123sControllerTest < ActionController::TestCase
  setup do
    @testing123 = testing123s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testing123s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testing123" do
    assert_difference('Testing123.count') do
      post :create, testing123: {  }
    end

    assert_redirected_to testing123_path(assigns(:testing123))
  end

  test "should show testing123" do
    get :show, id: @testing123
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testing123
    assert_response :success
  end

  test "should update testing123" do
    patch :update, id: @testing123, testing123: {  }
    assert_redirected_to testing123_path(assigns(:testing123))
  end

  test "should destroy testing123" do
    assert_difference('Testing123.count', -1) do
      delete :destroy, id: @testing123
    end

    assert_redirected_to testing123s_path
  end
end
