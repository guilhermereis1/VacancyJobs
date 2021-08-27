require "application_system_test_case"

class VacanciesTest < ApplicationSystemTestCase
  setup do
    @vacancy = vacancies(:one)
  end

  test "visiting the index" do
    visit vacancies_url
    assert_selector "h1", text: "Vacancies"
  end

  test "creating a Vacancy" do
    visit vacancies_url
    click_on "New Vacancy"

    fill_in "Category", with: @vacancy.category_id
    fill_in "Content", with: @vacancy.content
    fill_in "Name", with: @vacancy.name
    fill_in "Salary", with: @vacancy.salary
    click_on "Create Vacancy"

    assert_text "Vacancy was successfully created"
    click_on "Back"
  end

  test "updating a Vacancy" do
    visit vacancies_url
    click_on "Edit", match: :first

    fill_in "Category", with: @vacancy.category_id
    fill_in "Content", with: @vacancy.content
    fill_in "Name", with: @vacancy.name
    fill_in "Salary", with: @vacancy.salary
    click_on "Update Vacancy"

    assert_text "Vacancy was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacancy" do
    visit vacancies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacancy was successfully destroyed"
  end
end
