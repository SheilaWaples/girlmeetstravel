class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:message] "You have created a new post"
      redirect_to '/posts'
    else
      render '/posts/new'
  end
end

  def show
    @post= Post.find(params[:id])
  end

  def edit
end

  def update
    end

    def destroy
    end
end

private

def post_params
  params.require(:post).permit(:title, :content, :user_id)
  end

