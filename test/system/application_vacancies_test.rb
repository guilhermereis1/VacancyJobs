require "application_system_test_case"

class ApplicationVacanciesTest < ApplicationSystemTestCase
  setup do
    @application_vacancy = application_vacancies(:one)
  end

  test "visiting the index" do
    visit application_vacancies_url
    assert_selector "h1", text: "Application Vacancies"
  end

  test "creating a Application vacancy" do
    visit application_vacancies_url
    click_on "New Application Vacancy"

    fill_in "User", with: @application_vacancy.user_id
    fill_in "Vacancy", with: @application_vacancy.vacancy_id
    click_on "Create Application vacancy"

    assert_text "Application vacancy was successfully created"
    click_on "Back"
  end

  test "updating a Application vacancy" do
    visit application_vacancies_url
    click_on "Edit", match: :first

    fill_in "User", with: @application_vacancy.user_id
    fill_in "Vacancy", with: @application_vacancy.vacancy_id
    click_on "Update Application vacancy"

    assert_text "Application vacancy was successfully updated"
    click_on "Back"
  end

  test "destroying a Application vacancy" do
    visit application_vacancies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application vacancy was successfully destroyed"
  end
end
