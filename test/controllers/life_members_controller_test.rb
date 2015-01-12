require 'test_helper'

class LifeMembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
