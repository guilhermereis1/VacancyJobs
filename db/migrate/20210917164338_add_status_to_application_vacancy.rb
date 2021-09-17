class AddStatusToApplicationVacancy < ActiveRecord::Migration[6.1]
  def change
    add_column :application_vacancies, :status, :integer, default: 0
    add_column :application_vacancies, :has_cnh, :boolean, default: false
    add_column :application_vacancies, :has_address, :boolean, default: false
  end
end
