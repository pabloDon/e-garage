class GarageSessionsController < ApplicationController
  skip_before_filter :require_user, :only=>[:new, :create]
  
  
  def new
      @garage_session = GarageSession.new
    end

    def create
      @garage_session = GarageSession.new(params[:garage_session])
      if @garage_session.save
        flash[:notice] = "¡Bienvenido!"
        redirect_to my_garage_url
      else
        render :action => :new
      end
    end

    def destroy
      current_garage_session.destroy
      flash[:notice] = "¡Hasta pronto!"
      redirect_to new_garage_session_url
    end
end
