class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Test Portal!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :street,
        :zip, :city, :birthday, :password, :password_confirmation)
    end
end
