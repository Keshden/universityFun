class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_bookstore_level_admin
    if !logged_in?
      flash[:danger] = "Need to be logged in and have appropriate permissions to perform that action"
      redirect_to root_path
    elsif 

    end
  end
end
