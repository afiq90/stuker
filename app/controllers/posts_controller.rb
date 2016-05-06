class PostsController < ApplicationController

	def new 
		if current_user.connections.any?
			@post = Post.new
		else
			redirect_to dashboard_path, notice: "Please create a connection first"
		end
	end

	def create
		@post = current_user.posts.new(post_params)
		respond_to do |format|
			if @post.save
				format.html { redirect_to dashboard_path, notice: "Post succesfully created!"}
			else 
				format.html {render :new}
			end
		end
	end

	def cancel
		@post.update_attributes(state: "canceled")
		redirect_to dashboard_path, notice: "Post was successfully canceled"
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end


	def post_params
		params.require(:post).permit(:content, :scheduled_at, :state, :user_id, :facebook, :twitter)
	end

end
