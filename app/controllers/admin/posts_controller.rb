class Admin::PostsController < Admin::BaseController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_post_path(@post), notice: "Artikel berhasil dibuat."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = find_post
  end

  def edit
    @post = find_post
  end

  def update
    @post = find_post

    if @post.update(post_params)
      redirect_to admin_post_path(@post), notice: "Artikel berhasil diperbarui."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_post.destroy
    redirect_to admin_posts_path, notice: "Artikel dihapus."
  end

  private

  def find_post
    Post.find_by!(slug: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :slug, :excerpt, :category, :published_at, :body, :cover_image)
  end
end
