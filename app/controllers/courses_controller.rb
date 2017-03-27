class CoursesController < ApplicationController
    
    before_action :set_cat, :only => [:new,:index,:edit,:delete]
    before_action :set_course, :only => [:edit,:update,:delete]

  def index
    @courses = @category.courses
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    category = Category.find(params[:course][:cat_id])
    @course = category.courses.create(course_params)
    return redirect_to "/courses/#{category.id}"
  end

  def update
    # byebug
    category = Category.find(params[:course][:cat_id])
    @course.update(course_params)
    return redirect_to "/courses/#{category.id}"
  end

  def delete
    # @category.courses.find(@course.id).destroy
    @course.destroy
    return redirect_to "/courses/#{@category.id}"
  end


  private

  def set_cat
    @category = Category.find(params[:cat_id])
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name,:introduction,:description)
  end

  # def course_cat_params
  #   return params.require(:course).permit(:cat_id)
  # end
end
