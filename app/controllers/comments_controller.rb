class CommentsController < ApplicationController
	# before_action :authenticate_user!, except: [:index]
	# before_action :find_post

	private 

	def index
		@comments = Comment.all
end

def new
	@comment = Comment.new

end

def create
	@post = Post.find(params[:post_id])
	@comment = Comment.new
	if @comment.save
		# flash [:message] = "You've made a new comment"
		redirect_to 'posts/index'
	else
		redirect_to 'posts/new'
	end
end

private
 
 def comment_params
 	params.require(:comment).permit(:title, :author,:body)
 end
end