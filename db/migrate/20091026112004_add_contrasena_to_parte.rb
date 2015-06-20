class AddContrasenaToParte < ActiveRecord::Migration
  def self.up
    add_column :partes, :contrasena, :string
  end

  def self.down
    remove_column :partes, :contrasena
  end
end
