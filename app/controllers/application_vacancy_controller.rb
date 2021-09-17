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
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end

  def send_curriculum
    application_vacancy_id = params[:application_vacancy_id].to_i
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id])
    if params[:curriculum] != nil then
      @application_vacancy.curriculum.attach(params[:curriculum])
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end

  def send_cnh
    application_vacancy_id = params[:application_vacancy_id].to_i
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id])
    
    if params[:cnh] != nil then
      @application_vacancy.cnh.attach(params[:cnh])
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end

  def send_selfie
    application_vacancy_id = params[:application_vacancy_id].to_i
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id])
    
    if params[:cnh_selfie] != nil then
      @application_vacancy.cnh_selfie.attach(params[:cnh_selfie])
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    else
      redirect_to application_vacancy_id_path(@application_vacancy.id)
    end
  end

  def send_cnh_info
    @application_vacancy = ApplicationVacancy.find(params[:application_vacancy_id].to_i) 

    data = {
      name: params[:name],
      rg: params[:rg],
      cpf: params[:cpf],
      data_nas: params[:data_nas],
      pai: params[:pai],
      mae: params[:mae],
      numero_registro: params[:numero_registro],
      validade: params[:validade],
      primeira_hab: params[:primeira_hab],
      numero_hab: params[:numero_hab]
    }

    @application_vacancy.update(document_cnh: data)
    redirect_to application_vacancy_id_path(@application_vacancy.id)
  end
end