class UsersController < ApplicationController
  def index
    @users = User.all
  end

  #this shows the form for a new user
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end

  def edit
  end

  def show
    @user = current_user
    @post = Post.new
    @posts = Post.all
  end

  def update
  end

  def destroy
  end
end
