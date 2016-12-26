class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      login(@user)
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      redirect_to root_path
    end
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
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to :back
      flash[:error] = @user.errors.full_messages.join(". ")
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password_digest, :shipping_address, :admin)
  end

end
