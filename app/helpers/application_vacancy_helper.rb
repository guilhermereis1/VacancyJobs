module ApplicationVacancyHelper

  def fill_docs(fields)
    fields['name'].present? && fields['rg'].present? && fields['cpf'].present? && fields['numero_registro'].present? && fields['numero_hab'].present?
  end

  def input_value(record, key)
    if record.present? then
      record["#{key}"]
    else
      ""
    end
  end
end
