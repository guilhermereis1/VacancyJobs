class CreateVacancies < ActiveRecord::Migration[6.1]
  def change
    create_table :vacancies do |t|
      t.string :name
      t.text :content
      t.references :category, null: false, foreign_key: true
      t.decimal :salary

      t.timestamps
    end
  end
end
