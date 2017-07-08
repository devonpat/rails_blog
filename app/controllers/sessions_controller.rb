class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.where(email: params[:email]).first
    if @user and @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
