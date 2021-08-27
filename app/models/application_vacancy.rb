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

  has_one_attached :curriculum
  has_many_attached :documents

  # validate :acceptable_curriculum
  # validate :acceptable_documents

  private

  def acceptable_curriculum
    return unless documents.attached?

    unless documents.byte_size <= 5.megabyte
      errors.add(:documents, "Arquivo muito grande!")
    end

    acceptable_types = ["pdf"]

    unless acceptable_types.include?(documents.content_type)
      errors.add(:documents, "Apenas PDF")
    end
  end

  def acceptable_documents
    return unless documents.attached?

    unless documents.byte_size <= 5.megabyte
      errors.add(:documents, "Arquivo muito grande!")
    end

    acceptable_types = ["image/jpeg", "image/png", "image/webp"]

    unless acceptable_types.include?(documents.content_type)
      errors.add(:documents, "Apenas PNG e JPEG")
    end
  end
end
