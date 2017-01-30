class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user.try(:authenticate, params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      flash[:success] = "You have successfully logged in."
      redirect_to user
    else
      flash[:danger] = "Please log in with correct email/password combination."
      redirect_to login_url
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "You have successfully logged out."
    redirect_to root_url
  end
end
