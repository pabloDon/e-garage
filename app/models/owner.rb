class Owner < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :mobile, :phone, :garage_id,:dni
  
  validates :first_name, :last_name, :phone, :dni, :presence => true
  
  has_many :cars
  belongs_to :garage
  
  scope :by_garage, lambda { |garage|
      where(:garage_id => garage.id)
  }
  
  
  def public_name
    return "#{last_name}, #{first_name}"
  end
  
  def get_phone
    str = phone
    if mobile?
      return "Fijo: #{str} - Móvil: #{mobile}"
    end
  end
end
