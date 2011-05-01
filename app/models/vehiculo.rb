class Vehiculo < ActiveRecord::Base
  
  has_many :avisos
  belongs_to :central
  has_one :usuario
  has_many :repuestos
  
end
