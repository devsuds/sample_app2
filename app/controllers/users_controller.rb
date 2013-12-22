class UsersController < ApplicationController
  include SessionsHelper
  
  before_action :signed_in_user, only: [:index, :edit,:update, :following, :followers]
  before_action :correct_user, only: [:edit, :update]
  
  def show
     @user = User.find params[:id]
     @microposts = @user.microposts.paginate page: params[:page], limit: 5
  end
  
  def index
    @users = User.paginate(page: params[:page], limit: 5)
  end
    
  def new
    redirect_to root_url if signed_in?
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
      flash[:success] = "Congratulation!! your profile updated successfully"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  
private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def correct_user
    @user = User.find params[:id]
    redirect_to signin_url unless current_user? @user
  end
  
end
