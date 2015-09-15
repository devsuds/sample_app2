class StaticPagesController < ApplicationController
  include SessionsHelper
  def home
    @micropost = current_user.microposts.build if signed_in?
    @microposts = current_user.microposts.where("id != null") if signed_in?
    @user = User.new unless signed_in?
  end

  def about
  end

  def help
  end
end