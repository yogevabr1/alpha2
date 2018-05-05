class ApplicationController < ActionController::Base

	helper_method :current_user, :logged_in?
	def current_user
    # return current user if exists, if not, find the current user.
	 @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end


	def logged_in?
    # converting to boolean using !!
    !!current_user
	end

	def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform this action"
      redirect_to root_path
    end
	end
end
