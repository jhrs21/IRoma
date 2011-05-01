class Preventivo < ActiveRecord::Base

  has_one :tipo_mant
  belongs_to :aviso

end
