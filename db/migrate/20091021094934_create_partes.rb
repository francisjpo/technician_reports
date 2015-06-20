class CreatePartes < ActiveRecord::Migration
  def self.up
    create_table :partes do |t|
      t.references :operario
      t.references :obra
      t.float :ud1
      t.integer :ud1material_id
      t.float :ud2
      t.integer :ud2material_id
      t.float :ud3
      t.integer :ud3material_id
      t.float :ud4
      t.integer :ud4material_id
      t.float :ud5
      t.integer :ud5material_id
      t.float :ud6
      t.integer :ud6material_id
      t.float :ud7
      t.integer :ud7material_id
      t.float :ud8
      t.integer :ud8material_id
      t.float :ud9
      t.integer :ud9material_id
      t.float :ud10
      t.integer :ud10material_id
      t.float :ud11
      t.integer :ud11material_id
      t.float :ud12
      t.integer :ud12material_id
      t.float :ud13
      t.integer :ud13material_id
      t.float :ud14
      t.integer :ud14material_id
      t.float :ud15
      t.integer :ud15material_id
      t.float :ud16
      t.integer :ud16material_id
      t.float :ud17
      t.integer :ud17material_id
      t.float :ud18
      t.integer :ud18material_id
      t.float :ud19
      t.integer :ud19material_id
      t.float :ud20
      t.integer :ud20material_id

      t.timestamps
    end
  end

  def self.down
    drop_table :partes
  end
end
