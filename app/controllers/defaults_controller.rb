class DefaultsController < ApplicationController
  skip_before_filter :require_user
  
  def index
    set_tab :home
    if current_garage_session
      @garage = Garage.find(current_garage.id)
    else
      render 'home'
    end
  end
  
  def about
    set_tab :about
  end
  
  def search_marca_coche
  end
  
  def search_modelo_coche
  end
end
