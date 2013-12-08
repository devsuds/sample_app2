class UsersController < ApplicationController
  include SessionsHelper
  
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  
  def show
     @user = User.find params[:id]
     @microposts = @user.microposts.paginate page: params[:page], limit: 5
  end
  
  def index
    @users = User.paginate(page: params[:page], limit: 5)
  end
    
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    if @user.save
        sign_in @user
        flash[:success] = "Welcome to my Sample App!"
        redirect_to @user
    else 
      render 'new'
    end
  end
  
  def edit
    @user = User.find params[:id]
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Congratulation!! your rofile updated successfully"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "You are not allowed to perform this action. Please sign in to continue" unless signed_in?
    end
  end
  
  def correct_user
    @user = User.find params[:id]
    redirect_to signin_url unless current_user? @user
  end
  
end
