require 'test_helper'

class RealEstateControllerTest < ActionController::TestCase
  test "should get GRM" do
    get :GRM
    assert_response :success
  end

end
