module ApplicationHelper

  def application_name
    "VacancyJobs"
  end

  def real(resource)
    number_to_currency(resource, :unit => "R$ ", :separator => ",", :delimiter => ".")
  end
end
