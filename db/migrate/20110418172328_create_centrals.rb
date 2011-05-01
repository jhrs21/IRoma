class CreateCentrals < ActiveRecord::Migration
  def self.up
    create_table :centrals do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :centrals
  end
end
