class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      redirect_to root_path
    else
      redirect_to :backtrace_cleaner
    end
  end
end
