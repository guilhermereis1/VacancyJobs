class HomeController < ApplicationController
  layout 'site'
  
  def index
    @vacancies = Vacancy.all
    @categories = Category.all
  end
end
