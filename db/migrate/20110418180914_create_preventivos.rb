class CreatePreventivos < ActiveRecord::Migration
  def self.up
    create_table :preventivos do |t|
      t.integer :nro_planilla
      t.string :tipo
      t.text :descripcion
      t.integer :aviso_id

      t.timestamps
    end
  end

  def self.down
    drop_table :preventivos
  end
end
