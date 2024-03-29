class VacancyController < ApplicationController
  layout 'site'

  def index
    vacancy_id = params[:vacancy_id].to_i

    if vacancy_id.present? && vacancy_id != 0 then
      @vacancy = Vacancy.find(vacancy_id)

      if user_signed_in? then
        @application_vacancy = ApplicationVacancy.find_by(vacancy_id: vacancy_id, user: current_user.id)

        if @application_vacancy.present? then
          @registered = ApplicationVacancy.find_by(vacancy_id: vacancy_id)
        end
      end
    end
  end

  def apply_to_vacancy
    user_id = params[:user_id].to_i
    vacancy_id = params[:vacancy_id].to_i

    @application_vacancy = ApplicationVacancy.create!(
      user_id: user_id,
      vacancy_id: vacancy_id
    )

    respond_to do |format|
      if @application_vacancy.save
        format.html { redirect_to application_vacancy_id_path(@application_vacancy.id), notice: "Por favor enviar toda a Documentação necessário para a Vaga!" }
        format.json { render :show, status: :created, location: @application_vacancy }
      end
    end
  end
end
