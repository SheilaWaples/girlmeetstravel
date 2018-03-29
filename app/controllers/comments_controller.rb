class CommentsController < ApplicationController
	# before_action :authenticate_user!, except: [:index]
	# before_action :find_post

	

	def index
		@comments = Comment.all
end

# def new
# 	@comment = Comment.new

# end

def create	
	@comment = Comment.new(comment_params)
	@comment.user_id = current_user.id
	if @comment.save
		 # flash [:message] = "You've made a new comment"
		redirect_to comments_path
	else
		render "/"
	end
end


private
 
 def comment_params
 	params.require(:comment).permit(:title, :author,:body, :post_id, :user_id)
 end
end