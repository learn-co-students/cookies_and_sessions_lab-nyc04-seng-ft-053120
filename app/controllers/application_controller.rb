class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Load the cart from the session, or create a new empty cart.
  def current_cart
    session[:cart] ||= []
  end

  #should return an array of the items stored in the cart(using the rails session method)
  def cart
    @item = Item.find(params[:id])
 
    # Load the cart from the session, or create a new empty cart.
    cart << @item.id
   
    # Save the cart in the session.
    session[:cart] = cart
  end
end
