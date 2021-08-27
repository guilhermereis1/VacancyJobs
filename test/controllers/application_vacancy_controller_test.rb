require "test_helper"

class ApplicationVacancyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get application_vacancy_index_url
    assert_response :success
  end
end
