# == Schema Information
#
# Table name: application_vacancies
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  vacancy_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ApplicationVacancy < ApplicationRecord
  belongs_to :user
  belongs_to :vacancy
end
