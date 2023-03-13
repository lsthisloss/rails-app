class AdminController < ApplicationController
  def index
  end

  def items
    @items = Items.all.Includes(:user)
  end

  def users
  end

  def show_orders
    @items = Items.Includes(:user).find(params[:id])
  end
end
