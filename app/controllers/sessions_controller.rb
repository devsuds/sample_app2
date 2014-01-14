class SessionsController < ApplicationController
  include SessionsHelper
  protect_from_forgery with: :exception
  
  def new
    redirect_to root_url if signed_in?
    @user = User.new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_to current_user
      flash[:success] = "Welcome back #{current_user.name}!!!"
    else
      redirect_to root_path
      flash[:error] = 'Invalid email or password combination'
    end
  end
  
  def destroy
    user_name = current_user.name
    sign_out
    flash[:success] = "bye bye #{user_name}, see you soon!!!"
    redirect_to root_path
  end
end