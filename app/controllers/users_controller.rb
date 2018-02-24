class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def new
  	@user = User.new
  end
  
  def create
  	user = User.new (user_params)
  	if user.save
  		flash[:message] = "New user created"
  		redirect_to '/users'
  	else
  		flash[:message] = "Try again"
  		redirect_to_users_new_path
  end
end

  def show
  end
end
private
def user_params
	params.require(:user).permit(:username, :email, :password)
end