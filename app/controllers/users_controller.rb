class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
end

private
def user_params
	params.require(:user).permit(:username, :email, :password)
end