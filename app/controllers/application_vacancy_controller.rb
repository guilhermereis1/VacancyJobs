class ApplicationVacancyController < ApplicationController
  before_action :authenticate_user!
  layout 'user'

  def index
    @application_vacancy = ApplicationVacancy.find(params[:v_id])
    @vacancy = @application_vacancy.vacancy
  end

  def send_documentation
    application_vacancy_id = params[:application_vacancy_id].to_i
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id])
    if params[:documents] != nil then
      @application_vacancy.documents.attach(params[:documents])
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end

  def send_curriculum
    application_vacancy_id = params[:application_vacancy_id].to_i
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id])
    if params[:curriculum] != nil then
      @application_vacancy.curriculum.attach(params[:curriculum])
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end
end
