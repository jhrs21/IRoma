class CreateRepuestos < ActiveRecord::Migration
  def self.up
    create_table :repuestos do |t|
      t.string :serial
      t.string :nombre
      t.datetime :f_compra
      t.integer :cantidad
      t.float :precio
      t.integer :vehiculo_id
      t.integer :correctivo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :repuestos
  end
end
