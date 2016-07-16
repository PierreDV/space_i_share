class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to "../views/welcome/index.html.erb"
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end