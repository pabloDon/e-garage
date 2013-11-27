class Car < ActiveRecord::Base
  attr_accessible :color, :maker_id, :mileage, :modelo_id, :year, :plate, :owner_id
  
  belongs_to :owner
  belongs_to :maker
  belongs_to :modelo, :class_name => 'Modelo'
  
  def public_name
    return "#{maker.name} #{modelo.model} (#{year})"
  end

end
