class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_user
  
  helper_method :current_garage_session, :current_garage
  
  private
  def current_garage_session
    return @current_garage_session if defined?(@current_garage_session)
    @current_garage_session = GarageSession.find
  end

  def current_garage
    return @current_garage if defined?(@current_garage)
    @current_garage = current_garage_session && current_garage_session.garage
  end
  
  def require_user
    logger.debug "ApplicationController::require_user"
    unless current_garage
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_garage_session_url
      return false
    end
  end
  
  def require_no_user
    logger.debug "ApplicationController::require_no_user"
    if current_garage
      store_location
      flash[:notice] = "You must be logged out to access this page"
     # redirect_to home_index_path
      return false
    end
  end
  
  def store_location
    session[:return_to] = request.request_uri
  end
  
  def redirect_back_or_default(default = root_url, options)
    #redirect_to(session.delete(:return_to) || request.referer || default, options)
  end
end
