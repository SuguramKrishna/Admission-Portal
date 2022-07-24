require "test_helper"

class ParentDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get parent" do
    get parent_details_parent_url
    assert_response :success
  end
end
