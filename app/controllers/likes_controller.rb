class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @like.save
    @likes = Like.where(post_id: params[:post_id])
    get_post
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    binding.pry
    @like.destroy
    @likes = Like.where(post_id: params[:post_id])
    get_post
  end

  def get_post
    @post = Post.find(params[:post_id])
  end

end
