require "test_helper"

class DashAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dash_admin_index_url
    assert_response :success
  end
end
