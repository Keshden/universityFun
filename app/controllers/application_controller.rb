class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= (Student.find(session[:username]) if session[:username]) ||= (Teacher.find(session[:username]) if session[:username])
  end

  def logged_in?
    !!current_user
  end

  def require_bookstore_level_admin
    if !logged_in?
      flash[:danger] = "Need to be logged in and have appropriate permissions to perform that action"
      redirect_to login_path
    elsif @current_user.role? != "Admin_Level" || @current_user.role? != "Bookstore_Level_Employee" || @current_user.role? != "Super_Admin_Level"
      flash[:danger] = "You don't have the appropriate admin level for this action"
      redirect_to root_path
    end
  end
end
