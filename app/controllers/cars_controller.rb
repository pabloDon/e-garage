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
  
  def create
    car = Car.new
    car.color = params[:color]
    car.maker_id = (Maker.find_by_name(params[:marca]) || Maker.create(name: params[:marca])).id 
    car.modelo_id = (Modelo.find_by_model(params[:modelo]) || Modelo.create(model: params[:modelo], maker_id:car.maker_id)).id
    car.mileage = params[:mileage]
    car.year = params[:year]
    car.owner_id = params[:owner]
    Rails.logger.error car.to_yaml
    
    render nothing: true
  end
end
