class SavedItemsController < ApplicationController

  def create
    @saved = SavedItem.create(saved_item_params)
    if @saved.valid?
      @saved.save
      flash[:success] = "Item Saved"
    else
      flash[:error] = @saved.errors.full_messages.join(". ")
    end
  end

  def destroy
    SavedItem.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private

  def saved_item_params
    params.require(:saved_item).permit(:item_id,:user_id)
  end

end
