require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    get user_new_url
    assert_response :success
  end
end
