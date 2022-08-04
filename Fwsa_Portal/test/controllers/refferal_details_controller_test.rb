require "test_helper"

class RefferalDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get refferal" do
    get refferal_details_refferal_url
    assert_response :success
  end
end
