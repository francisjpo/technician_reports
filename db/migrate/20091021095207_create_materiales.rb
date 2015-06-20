class CreateMateriales < ActiveRecord::Migration
  def self.up
    create_table :materiales do |t|
      t.string :nombre
      t.string :referencia

      t.timestamps
    end
  end

  def self.down
    drop_table :materiales
  end
end
