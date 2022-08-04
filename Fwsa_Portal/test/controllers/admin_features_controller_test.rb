require "test_helper"

class AdminFeaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_features_dashboard_url
    assert_response :success
  end
end
