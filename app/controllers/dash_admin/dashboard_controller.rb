class DashAdmin::DashboardController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
    @application_vacancies = ApplicationVacancy.all
  end
end
