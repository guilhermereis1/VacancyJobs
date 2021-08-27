require "test_helper"

class ApplicationVacancyAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get application_vacancy_admin_index_url
    assert_response :success
  end
end
