class CartController < ApplicationController

  def show
  end

  def add 
    @item = Item.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_myorderable = @cart.myorderables.find_by(item_id: @item.id)
    if current_myorderable && quantity > 0
      current_myorderable.update(quantity:)
    elsif quantity <=0
        current_myorderable.destroy
    else
      @cart.myorderables.create(item: @item, quantity:)
    end

  end

  def remove
  Myorderable.find_by(id: params[:id]).destroy
  redirect_to '/cart'
  end

end
