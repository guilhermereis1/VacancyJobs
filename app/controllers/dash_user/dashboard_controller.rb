class DashUser::DashboardController < ApplicationController
  before_action :authenticate_user!
  layout 'user'
  
  def index
    @application_vacancies = ApplicationVacancy.where(user_id: current_user.id)
  end
end
