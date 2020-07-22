class ProductsController < ApplicationController

  def index
  end

  def add
    # get the item from the search 
    @item = params[:product]
    # load the cart from the session or create a new empty cart
    # add the item in it
    cart << @item

    render :index
  end
end