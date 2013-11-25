class CarsController < ApplicationController
  def search_matricula_coche
    @coches = Car.by_garage(current_garage).order(:last_name).where('plate like ?', "#{params[:term]}%")
    render json: @coches.map{|c| {:first_name => c.marca, 
                                    :last_name => c.modelo, 
                                    :phone => c.year, 
                                    :mobile => c.km, 
                                    :label => c.public_name
                                   }
                               }
  end
  
  def search_marca_coche
    @marcas = Maker.order(:name).where('name like ?', "%#{params[:term]}%").limit(5)
    render json: @marcas.map(&:name)
  end
  
  def search_modelo_coche
    @marcas = Modelo.order(:model).where('model like ?', "%#{params[:term]}%").limit(10)
    render json: @marcas.map(&:model)
  end
end
