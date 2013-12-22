class SessionsController < ApplicationController
  include SessionsHelper
  protect_from_forgery with: :exception
  
  def new
    redirect_to root_url if signed_in?
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_to user
      flash[:success] = 'Welcome back!!'
    else
      flash[:error] = 'Invalid email or password combination'
      redirect_to signin_path
    end
  end
  
  def destroy
    sign_out
    flash[:success] = 'bye bye!!'
    redirect_to root_url
  end
end