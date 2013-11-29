class MicropostsController < ApplicationController
  include SessionsHelper
  before_action :signed_in_user
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
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
