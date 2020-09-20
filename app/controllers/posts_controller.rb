class PostsController < ApplicationController
  def index
    @posts = Post.all.limit(5)
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
    if user_signed_in?
    @post = Post.new
    @post.images.new
    else
      redirect_to new_user_session_path
    end
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
    params.require(:post).permit( :name, images_attributes: [:src]).merge(user_id: current_user.id)
  end

end
