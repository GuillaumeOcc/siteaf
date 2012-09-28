class ApplicationController < ActionController::Base
  protect_from_forgery

 helper_method :current_user

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		@current_user
	end

  def require_user
  	if !current_user
  		redirect_to login_url
  	end
  end
end
