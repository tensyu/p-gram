class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = post.new(post_params)
    @post.save
    redirect_to @post
  end
  
  privete
  
  def post_params
    params.require(:post).permit(:caption)
  end
end

