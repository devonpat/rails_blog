class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @user = current_user
    @post = Post.find(params[:comment][:post_id])
    @comment = @user.comments.create(comment_params)
    redirect_to @post
  end

  def edit
  end

  def show
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
