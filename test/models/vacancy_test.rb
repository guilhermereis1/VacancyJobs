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
require "test_helper"

class VacancyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
