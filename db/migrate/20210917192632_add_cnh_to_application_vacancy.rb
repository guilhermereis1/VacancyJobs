class AddCnhToApplicationVacancy < ActiveRecord::Migration[6.1]
  def change
    add_column :application_vacancies, :document_cnh, :json
  end
end
