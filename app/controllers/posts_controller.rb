class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all
  end

  def new
  end

  def create
    @user = current_user
    @user.posts.create(params[:post])
    @post = Post.find(params[:id])
  end

  def edit
  end

  def show
    @user = current_user
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end

end
