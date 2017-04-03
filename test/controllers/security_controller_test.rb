require 'test_helper'

class SecurityControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get security_signup_url
    assert_response :success
  end

  test "should get login" do
    get security_login_url
    assert_response :success
  end

end
