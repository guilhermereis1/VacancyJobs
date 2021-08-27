require "test_helper"

class ApplicationVacanciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_vacancy = application_vacancies(:one)
  end

  test "should get index" do
    get application_vacancies_url
    assert_response :success
  end

  test "should get new" do
    get new_application_vacancy_url
    assert_response :success
  end

  test "should create application_vacancy" do
    assert_difference('ApplicationVacancy.count') do
      post application_vacancies_url, params: { application_vacancy: { user_id: @application_vacancy.user_id, vacancy_id: @application_vacancy.vacancy_id } }
    end

    assert_redirected_to application_vacancy_url(ApplicationVacancy.last)
  end

  test "should show application_vacancy" do
    get application_vacancy_url(@application_vacancy)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_vacancy_url(@application_vacancy)
    assert_response :success
  end

  test "should update application_vacancy" do
    patch application_vacancy_url(@application_vacancy), params: { application_vacancy: { user_id: @application_vacancy.user_id, vacancy_id: @application_vacancy.vacancy_id } }
    assert_redirected_to application_vacancy_url(@application_vacancy)
  end

  test "should destroy application_vacancy" do
    assert_difference('ApplicationVacancy.count', -1) do
      delete application_vacancy_url(@application_vacancy)
    end

    assert_redirected_to application_vacancies_url
  end
end
