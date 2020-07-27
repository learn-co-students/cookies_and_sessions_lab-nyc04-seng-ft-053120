class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart #makes method accessible in views

  def cart #returns cart array stored in session
    #returns current cart by reading from session hash
    session[:cart] ||= []
  end
end
