class DashAdmin::DashboardController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  
  def index
    @application_vacancies = ApplicationVacancy.all.order(created_at: :desc)
  end

  def users
    @users = User.all.order(created_at: :desc)
  end
end
