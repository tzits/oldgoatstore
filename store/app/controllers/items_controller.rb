class ItemsController < ApplicationController

  def create
    @item = Item.create(item_params)
    if @item.valid?
      @item.save
      flash[:success] = 'Item Added'
    else
      flash[:error] = @item.errors.full_messages.join(". ")
    end
  end

  def index
    @items = Item.all
    #TODO add sql command to make it only items where quantity > 0 and separate one where = 0
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(user_params)
      redirect_to items_path
    else
      flash[:error] = @item.errors.full_messages.join(". ")
    end
  end

  def destroy
    @item = User.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name,:description,:price,:shippable,:quantity,:buy_now,:picture,:category)
  end
end
