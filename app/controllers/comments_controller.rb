class CommentsController < ApplicationController
  def create
    @post = Post.find_by!(slug: params[:post_slug])
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_path(@post), notice: "Komentar berhasil dikirim."
    else
      @related = Post.published.where(category: @post.category).where.not(id: @post.id).limit(3)
      render "posts/show", status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end
end
