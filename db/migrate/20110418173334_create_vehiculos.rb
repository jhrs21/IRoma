class CreateVehiculos < ActiveRecord::Migration
  def self.up
    create_table :vehiculos do |t|
      t.string :placa
      t.string :equipo
      t.integer :ano
      t.string :denominacion
      t.integer :central_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :vehiculos
  end
end
