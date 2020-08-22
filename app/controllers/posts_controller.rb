class PostsController < ApplicationController
  def index
  end
  def new
    @post = Post.new
    @post.images.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save!
      binding.pry
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
