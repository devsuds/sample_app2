class StaticPagesController < ApplicationController
  include SessionsHelper
  def home
    @user = current_user
    @micropost = current_user.microposts.build if signed_in?
  end

  def about
  end

  def help
  end
end