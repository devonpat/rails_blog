class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.find(params[:id])
  end

  def new
  end

  def create
    @user = current_user
    @user.posts.create(params[:post])
    redirect_to @user
  end

  def edit
  end

  def show
    @user = current_user
    @posts = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
