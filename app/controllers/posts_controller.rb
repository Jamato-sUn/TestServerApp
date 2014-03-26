class PostsController < ApplicationController
  before_action :get_post, only: [:show, :destroy, :edit]
  def get_post
	@post = Post.find(params[:id])
  end
  def index
	 logger.info 'RAWR'
	@posts = Post.find(:all)
  end
  def show 
  end
  def destroy
	@post.destroy
	redirect_to :action => 'index'
	logger.info 'DELETE! EXTERMINATE!'
  end
  def add

  end
  def edit
  
  end
  def update
  
end
end
