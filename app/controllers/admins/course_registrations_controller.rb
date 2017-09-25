class Admins::CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :edit, :update, :destroy]

  def index
    @course_registrations = CourseRegistration.all
  end

  def show
  end

  def new
    @course_registration = CourseRegistration.new
  end

  def edit
  end

  def create
    @course_registration = CourseRegistration.new(course_registration_params)

    respond_to do |format|
      if @course_registration.save
        format.html { redirect_to admins_course_registration_path(@course_registration), notice: 'Course registration was successfully created.' }
        format.json { render :show, status: :created, location: @course_registration }
      else
        format.html { render :new }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course_registration.update(course_registration_params)
        format.html { redirect_to admins_course_registration_path(@course_registration), notice: 'Course registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_registration }
      else
        format.html { render :edit }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course_registration.destroy
    respond_to do |format|
      format.html { redirect_to admins_course_registrations_url, notice: 'Course registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_registration_params
      params.require(:course_registration).permit(:first_name, :last_name, :contact, :email, :course_id)
    end
end
