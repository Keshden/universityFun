class CoursesController < ApplicationController
  before_action :set_course, except: [:index, :new, :create]
 
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @coures = Course.new(course_params)
    if @course.save
      flash[:success] = "Course successfully created!"
      redirect_to @course
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @course.update
      flash[:success] = "Course has been successfully updated!"
      redirect_to @course
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @course.destroy
    flash[:warning] = "Course has been removed successfully!"
    redirect_to courses_path
  end

  private
  
  def course_params
    params.require[:course].permit[:courseName, :courseType, :courseCredits, :courseRequirementType, :courseIdentifier, :courseSummary]
  end

  def set_course
    @course = Course.find(params[:id])
  end

end