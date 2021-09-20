module ApplicationVacancyHelper

  def validations_files(application_vacancy)
    if application_vacancy.document_cnh.present? then
      if application_vacancy.cnh.attached? && application_vacancy.cnh_selfie.attached? then
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def validations_documents(documents)
    documents.present?
  end

  def validations_contacts(application_vacancy)
    application_vacancy.contacts.present?
  end

  def fill_docs(fields)
    fields['name'].present? && fields['rg'].present? && fields['cpf'].present?
  end

  def input_value(record, key)
    if record.present? then
      record["#{key}"]
    else
      ""
    end
  end
end
