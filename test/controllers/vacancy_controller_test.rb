require "test_helper"

class VacancyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vacancy_index_url
    assert_response :success
  end
end
