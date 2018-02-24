class CommentsController < ApplicationController
	def index
		@comments = Comment.all
end

def new
	@comment = Comment.new

end

def create
	@comment = Comment.new
	if @comment.save
		flash [:message] "You've made a new comment"
		redirect_to 'posts/index'
	else
		redirect_to 'posts/new'
	end

end