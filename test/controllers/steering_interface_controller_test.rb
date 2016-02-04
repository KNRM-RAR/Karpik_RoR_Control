require 'test_helper'

class SteeringInterfaceControllerTest < ActionController::TestCase
  test "should get steering" do
    get :steering
    assert_response :success
  end

end
