class ApplicationVacanciesController < ApplicationController
  before_action :set_application_vacancy, only: %i[ show edit update destroy ]

  # GET /application_vacancies or /application_vacancies.json
  def index
    @application_vacancies = ApplicationVacancy.all
  end

  # GET /application_vacancies/1 or /application_vacancies/1.json
  def show
  end

  # GET /application_vacancies/new
  def new
    @application_vacancy = ApplicationVacancy.new
  end

  # GET /application_vacancies/1/edit
  def edit
  end

  # POST /application_vacancies or /application_vacancies.json
  def create
    @application_vacancy = ApplicationVacancy.new(application_vacancy_params)

    respond_to do |format|
      if @application_vacancy.save
        format.html { redirect_to @application_vacancy, notice: "Application vacancy was successfully created." }
        format.json { render :show, status: :created, location: @application_vacancy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @application_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_vacancies/1 or /application_vacancies/1.json
  def update
    respond_to do |format|
      if @application_vacancy.update(application_vacancy_params)
        format.html { redirect_to @application_vacancy, notice: "Application vacancy was successfully updated." }
        format.json { render :show, status: :ok, location: @application_vacancy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @application_vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_vacancies/1 or /application_vacancies/1.json
  def destroy
    @application_vacancy.destroy
    respond_to do |format|
      format.html { redirect_to application_vacancies_url, notice: "Application vacancy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_vacancy
      @application_vacancy = ApplicationVacancy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_vacancy_params
      params.require(:application_vacancy).permit(:user_id, :vacancy_id)
    end
end
