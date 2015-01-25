class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    p params
    user_parameters = params[:user]
    User.create(email: user_parameters[:email], name: user_parameters[:name])
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(user_parameters)
    redirect_to user_path(user)
  end

  

  private

  def user_parameters
    params.require(:user).permit(:name)
  end
end