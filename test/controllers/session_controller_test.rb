require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get session_login_url
    assert_response :success
  end

  test "should get Logout" do
    get session_Logout_url
    assert_response :success
  end

end
