class MicropostsController < ApplicationController
  include SessionsHelper
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user, only: [:destroy]
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      respond_to do |format|
        format.html {redirect_to root_url}
        format.js {render layout: false}
      end
    else
      render 'static_pages/home'
      flash[:error] = "Failed to create micropost."
    end
  end

  def destroy
    if @micropost.destroy
      respond_to do |format|
        format.html {redirect_to root_url}
        format.js {render layout: false}
      end
    else
      render 'static_pages/home'
      flash[:error] = "Failed to delete micropost."
    end
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end
end
