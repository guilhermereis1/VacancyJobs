class SiteCategoriesController < ApplicationController
  layout 'site'

  def index
    @categories = Category.all
  end
end
