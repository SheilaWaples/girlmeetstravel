class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  def create
  end

  def edit
  end
end

private

def posts_params
	params.require(:post).permit(:title, :content, :user_id)
end