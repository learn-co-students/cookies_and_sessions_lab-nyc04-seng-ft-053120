class ProductsController < ApplicationController
    def index
    end

    def add
        #get the item from search and load the cart from session or create new empty cart
        #then add the item to the cart
      cart << params[:product]
      render :index
    end
  end