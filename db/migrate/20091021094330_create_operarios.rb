class CreateOperarios < ActiveRecord::Migration
  def self.up
    create_table :operarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :usuario
      t.string :contrasena
      t.integer :telefono
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :operarios
  end
end
