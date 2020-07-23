class ProductsController < ApplicationController

    def index
        # byebug
    end

    def add
        # byebug
        current_cart << params[:product]
        # byebug
        render "index"
    end

end