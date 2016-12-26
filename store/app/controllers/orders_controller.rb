class OrdersController < ApplicationController

  def create
    @order = Order.create(order_params)
    if @order.valid?
      @order.save
      redirect_to user_path(current_user)
    else
      flash[:error] = @order.errors.full_messages.join(". ")
      redirect_to :back
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      redirect_to :back
      flash[:error] = @order.errors.full_messages.join(". ")
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:date,:status,:user_id)
  end

end
