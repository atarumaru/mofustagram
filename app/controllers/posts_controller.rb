class PostsController < ApplicationController
  def index
    @posts = Post.includes(:images).order('created_at DESC')
  end
  def new
    @post = Post.new
    @post.images.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit( images_attributes: [:src])
  end

end
