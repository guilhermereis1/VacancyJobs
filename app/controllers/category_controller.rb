class CategoryController < ApplicationController
  layout 'site'
  
  def index
    category_id = params[:category_id].to_i

    if category_id.present? && category_id != 0 then
      @category = Category.find(category_id)
    end
  end
end
