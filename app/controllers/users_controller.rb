class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user.reload)
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :user_id,
      :password_digest
    )
  end
end
