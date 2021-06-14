class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update, :show, :destroy]

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:success] = "Teacher account successfully created!"
      redirect_to @teacher
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      flash[:success] = "Account successfully updated!"
      redirect_to @teacher
    else
      render 'edit'
    end
  end

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def destroy
    @teacher.destroy
    flash[:danger] = "Teacher successfully removed from system."
    redirect_to teachers_path
  end

  private
  
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require[:teacher].permit[:firstName, :lastName, :username, :teachersbio, :password]
  end

end