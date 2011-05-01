class Correctivo < ActiveRecord::Base

  belongs_to :aviso
  has_many :repuestos

end
