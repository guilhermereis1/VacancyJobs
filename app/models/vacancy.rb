# == Schema Information
#
# Table name: vacancies
#
#  id          :bigint           not null, primary key
#  name        :string
#  content     :text
#  category_id :bigint           not null
#  salary      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city_id     :bigint           not null
#
class Vacancy < ApplicationRecord
  belongs_to :category
  belongs_to :city
  has_many :application_vacancies, dependent: :destroy

  has_one_attached :cover
end
