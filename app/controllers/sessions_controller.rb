class SessionsController < ApplicationController


	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id 
			redirect_to '/users'
		else
			redirect_to '/signin'
		end

	end

	def destroy
		# User.find(session[:user_id]).destroy
		session[:user_id]=nil
		redirect_to '/'
	end
end
