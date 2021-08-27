class ApplicationVacancyController < ApplicationController
  before_action :authenticate_user!
  layout 'user'

  def index
    @application_vacancy = ApplicationVacancy.find(params[:v_id])
    @vacancy = @application_vacancy.vacancy
  end
end
