class CreateTipoMants < ActiveRecord::Migration
  def self.up
    create_table :tipo_mants do |t|
      t.string :tipo
      t.integer :preventivo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_mants
  end
end
