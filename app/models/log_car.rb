class LogCar < ActiveRecord::Base
  attr_accessible :car_id, :desc, :entry_id, :owner_id
  
  validates :desc, :presence => true
  
end
