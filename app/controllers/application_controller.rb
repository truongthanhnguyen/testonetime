class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	render html:"hi, I'm Thanh"
  end
end
