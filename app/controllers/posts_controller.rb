class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
    @post = Post.find_by!(slug: params[:slug])
    @comment = Comment.new
    @related = Post.published.where(category: @post.category).where.not(id: @post.id).limit(3)
  end
end
