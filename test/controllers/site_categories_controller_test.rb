require "test_helper"

class SiteCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_categories_index_url
    assert_response :success
  end
end
