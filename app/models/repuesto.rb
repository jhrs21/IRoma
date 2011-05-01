class Repuesto < ActiveRecord::Base

  belongs_to :vehiculo
  belongs_to :correctivo

end
