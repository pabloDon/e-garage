class Entry < ActiveRecord::Base
  attr_accessible :car_id, :comments, :departure_date, :hours, :owner_id, :status_id, :garage_id
  # STATUS:
  # 0 => Pendiente
  # 1 => En desarrollo
  # 2 => Terminado
  # 3 => Factura emitida
  # 4 => Factura pagada
  scope :by_garage, lambda { |garage|
      where(:garage_id => garage.id)
  }
  
  def self.estados_posibles
    [Estado.new(0, "Pendiente"),
     Estado.new(1, "En desarrollo"),
     Estado.new(2, "Terminado"),
     Estado.new(3, "Factura emitida"),
     Estado.new(4, "Fatura pagada")
    ]
  end
end
