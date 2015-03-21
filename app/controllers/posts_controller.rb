class PostsController < ApplicationController
	def show
		p "params"
		p params
		@post = Post.find(params[:id])
		#'params' is the magical object in rails that lets you find any object - look for the variable in your url
	end

	def new
		@post = Post.new
		p "the post is"
		p @post 
	end

	def create
		@post = Post.new
		@post.title = params[:post][:title]
		@post.content = params[:post][:content]
		@post.user = current_user		
		@post.save
		redirect_to @post
	end
end