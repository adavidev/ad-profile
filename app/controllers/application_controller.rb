class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  after_filter :allow_iframe
  
  def allow_iframe
    response.headers["X-FRAME-OPTIONS"] = "ALLOW-FROM http://adavidev.com"
  end
end
