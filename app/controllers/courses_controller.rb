class CoursesController < ApplicationController
    
    before_action :set_cat :only[:index,:update,:create,:edit,:delete]

  def index
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end


  private

  def set_cat
    @category = Category.find(params[:cat_id])
  end

  def course_params
    params.require(:course).permit(:name,:introduction,:description)
  end
end
