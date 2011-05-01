class CreateAvisos < ActiveRecord::Migration
  def self.up
    create_table :avisos do |t|
      t.integer :nro_aviso
      t.datetime :f_creacion
      t.datetime :f_cierre
      t.integer :vehiculo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :avisos
  end
end
