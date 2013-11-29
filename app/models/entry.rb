class Entry < ActiveRecord::Base
  attr_accessible :car_id, :comments, :departure_date, :hours, :owner_id, :status_id, :garage_id
  belongs_to :car
  belongs_to :owner
  belongs_to :garage
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
  
  def self.get_estado id_estado
    hash = ["Pendiente", "En desarrollo", "Terminado", "Factura emitida", "Fatura pagada"]
    hash[id_estado]
  end
  
  def self.pendientes
    where(:status_id => 0).order('created_at ASC')
  end
  
  def self.en_desarrollo
    where(:status_id => 1).order('created_at ASC')
  end
  
  def self.terminados
    where('status_id > ?',1).order('created_at ASC')
  end
end
