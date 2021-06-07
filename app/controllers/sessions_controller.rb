class SessionsController < ApplicationController

  def new
  end

  def create
    user = Student.find_by(username: params[:session][:username.downcase]) || user = Teacher.find_by(username: params[:session][:username.downcase])
    if user && user.authenticate(params[:session][:password])
      session[:username] = user.username
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:danger] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
    session[:username] = nil
    flash[:danger] = "You have successfully logged out"
    redirect_to login_path
  end

end