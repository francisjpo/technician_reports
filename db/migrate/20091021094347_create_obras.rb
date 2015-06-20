class CreateObras < ActiveRecord::Migration
  def self.up
    create_table :obras do |t|
      t.string :nombre
      t.string :direccion
      t.references :ciudad
      t.references :operario
      t.references :parte

      t.timestamps
    end
  end

  def self.down
    drop_table :obras
  end
end
