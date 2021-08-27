class ApplicationVacancyAdminController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def index
    @application_vacancy = ApplicationVacancy.find(params[:id])
    @vacancy = @application_vacancy.vacancy
  end
end
