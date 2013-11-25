class Car < ActiveRecord::Base
  attr_accessible :color, :maker_id, :mileage, :modelo_id, :year, :plate, :owner_id
  
  belongs_to :owner
  belongs_to :maker
  belongs_to :model, :class_name => 'Modelo'
  
  def public_name
    return "#{maker.name} #{modelo.name} (#{year})"
  end

end
