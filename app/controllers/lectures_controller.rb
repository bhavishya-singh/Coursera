class LecturesController < ApplicationController
  
  before_action :set_course, :only => [:index, :new, :edit]
  before_action :set_lecture, :only => [:show, :edit, :update, :delete]

  def index
    @lectures = @course.lectures
  end

  def new
    @lecture = Lecture.new
  end

  def edit
  end

  def delete
    course = @lecture.course
    @lecture.destroy
    return redirect_to "/lectures/#{course.id}"
  end

  def create
    course = Course.find(params[:lecture][:course_id])
    lecture = course.lectures.create(lecture_params)
    return redirect_to "/lectures/#{course.id}"
  end

  def update
    course = Course.find(params[:lecture][:course_id])
    @lecture.update(lecture_params)
    return redirect_to "/lectures/#{course.id}"
  end

  def show

  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(:lec_no,:description,:youtube_link)
  end
end
