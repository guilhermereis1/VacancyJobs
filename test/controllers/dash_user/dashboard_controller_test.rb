require "test_helper"

class DashUser::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dash_user_dashboard_index_url
    assert_response :success
  end
end
