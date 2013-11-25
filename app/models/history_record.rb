class HistoryRecord < ActiveRecord::Base
  attr_accessible :car_id, :comment
  
  belongs_to :car
end
