class CreateCorrectivos < ActiveRecord::Migration
  def self.up
    create_table :correctivos do |t|
      t.integer :nro_planilla
      t.integer :aviso_id

      t.timestamps
    end
  end

  def self.down
    drop_table :correctivos
  end
end
