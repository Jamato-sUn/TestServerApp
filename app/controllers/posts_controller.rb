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
  def new
      @post = Post.new
      render :partial => "form"
  end
  def edit
      render :partial => "form"
  end
  def update
  
  end
  
  def create
      @post = Post.new(post_params)
      @post.date = Time.now
  if @post.save  
      redirect_to @post
  else
      render 'new'
      logger.info 'Creation error'
  end
  end
private
  def post_params
    params.require(:post).permit(:title, :content, :mood)
  end
end
