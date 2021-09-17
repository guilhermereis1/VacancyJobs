class AddContactsToApplicationVacancy < ActiveRecord::Migration[6.1]
  def change
    add_column :application_vacancies, :contacts, :json
  end
end
