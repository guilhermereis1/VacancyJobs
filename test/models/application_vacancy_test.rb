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
#
require "test_helper"

class ApplicationVacancyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
