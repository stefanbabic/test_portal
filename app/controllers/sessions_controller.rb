class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user.try(:authenticate, params[:session][:password])
      log_in user
      flash[:success] = "You are successfully logged in."
      redirect_to user
    else
      flash[:danger] = "Please log in with correct email/password combination."
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    flash[:success] = "You are successfully logged out."
    redirect_to root_url
  end
end
