class UsersController < ApplicationController
  def index
    @users = User.all
    render json:@users

  end
  def show
    @user = User.find(params[:id])
    render json:@user
  end
  def destroy
    @user = User.find(params[:id])
    @user.delete
  end

  def create
   @user = User.new(user_params)

   if @user.save
     render json: @user, status: :created
   else
     render json: @user.errors, status: :unprocessable_entity
   end
 end
 def update
   @user = User.find(params[:id])
   @user.update(user_params)
 end
  def user_params
    params.require(:user).permit(:name, :mobile)
  end
end
