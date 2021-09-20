# == Schema Information
#
# Table name: application_vacancies
#
#  id           :bigint           not null, primary key
#  user_id      :bigint           not null
#  vacancy_id   :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  status       :integer          default("pending")
#  has_cnh      :boolean          default(FALSE)
#  has_address  :boolean          default(FALSE)
#  document_cnh :json
#  contacts     :json
#
class ApplicationVacancy < ApplicationRecord
  belongs_to :user
  belongs_to :vacancy

  has_one_attached :curriculum
  has_many_attached :documents
  has_one_attached :cnh
  has_one_attached :cnh_selfie

  enum status: { pending: 0, complete: 1 }
end
