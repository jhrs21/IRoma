class Aviso < ActiveRecord::Base

  belongs_to :vehiculo
  has_one :correctivo
  has_one :preventivo

end
