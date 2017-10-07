class CourseModulesController < ApplicationController
  
  layout 'general'

  def index
    @course = Course.friendly.find(params[:course_id])
    @modules = @course.course_modules
  end
end
