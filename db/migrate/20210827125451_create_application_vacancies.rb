class CreateApplicationVacancies < ActiveRecord::Migration[6.1]
  def change
    create_table :application_vacancies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vacancy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
