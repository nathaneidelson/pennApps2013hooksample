require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get notifyAll" do
    get :notifyAll
    assert_response :success
  end

end
