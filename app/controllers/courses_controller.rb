class CoursesController < ApplicationController
  before_action :set_course, only: [:show]
  


  def show
  end

  def new_course_enrollment
    @course = Course.find(params[:course_id])
  end

  def create_course_enrollment
    @course = Course.find(params[:create_course_enrollment][:course_id])
    @enrollment = CourseRegistration.new(course_enrollment_params)
    if @enrollment.save
      redirect_to course_path(@course)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.friendly.find(params[:id])
    end

    def course_enrollment_params
      params.require(:create_course_enrollment).permit(:first_name, :last_name, :course_id, :email, :contact,:slug)
    end

end
