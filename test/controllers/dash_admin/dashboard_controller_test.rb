require "test_helper"

class DashAdmin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dash_admin_dashboard_index_url
    assert_response :success
  end
end
