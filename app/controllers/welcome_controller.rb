class WelcomeController < ApplicationController
  def index
    @users = User.all
    render json:@users

  end
  def show
    @user = User.find(params[:id])
    render json:@user
  end
  def delete
    @user = User.find(params[:id])
    @user.delete
  end
end
