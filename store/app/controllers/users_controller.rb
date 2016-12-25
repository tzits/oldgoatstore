class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def create
    @user = User.create(user_params)
  end
  def show
    @user = User.find(params[:id])
    @orders = @user.orders
    @saved = User.find_by_sql("SELECT * FROM saved_items WHERE user_id = #{params[:id]}")
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
  end
  def destroy
    user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password_digest, :shipping_address, :admin)
  end

end
