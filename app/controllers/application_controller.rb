class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	def current_user
  		@current_user = User.find(session[:user_id])
  	end
    
    helper_method :current_user, :logged_in?
   	
   	def logged_in?
   		@current_user != nil
 	end
end
