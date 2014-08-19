require 'test_helper'

class GrmControllerTest < ActionController::TestCase
  test "should get salesPrice" do
    get :salesPrice
    assert_response :success
  end

  test "should get monthlyRent" do
    get :monthlyRent
    assert_response :success
  end

end
