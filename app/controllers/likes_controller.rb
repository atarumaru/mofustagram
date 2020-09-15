class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.iine(current_user)
  end

  def destroy
    @post = Like.find(params[:id]).post
    binding.pry
    @post.uniine(current_user)
  end

end
