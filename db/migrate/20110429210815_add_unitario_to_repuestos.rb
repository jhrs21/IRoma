class AddUnitarioToRepuestos < ActiveRecord::Migration
  def self.up
    add_column :repuestos, :unitario, :boolean
  end

  def self.down
    remove_column :repuestos, :unitario
  end
end
