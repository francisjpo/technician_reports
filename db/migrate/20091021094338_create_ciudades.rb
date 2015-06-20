class CreateCiudades < ActiveRecord::Migration
  def self.up
    create_table :ciudades do |t|
      t.string :nombre
      t.float :kilometraje
      t.string :dieta

      t.timestamps
    end
  end

  def self.down
    drop_table :ciudades
  end
end
