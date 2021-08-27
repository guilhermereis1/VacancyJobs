class VacancyController < ApplicationController
  layout 'site'

  def index
    vacancy_id = params[:vacancy_id].to_i

    if vacancy_id.present? && vacancy_id != 0 then
      @vacancy = Vacancy.find(vacancy_id)
    end
  end
end
