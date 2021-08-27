module ApplicationHelper

  def application_name
    "Meu Emprego Certo"
  end

  def real(resource)
    number_to_currency(resource, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end
end
