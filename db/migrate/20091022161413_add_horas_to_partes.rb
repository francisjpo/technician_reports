class AddHorasToPartes < ActiveRecord::Migration
  def self.up
    add_column :partes, :horas_base, :float
    add_column :partes, :horas_extra, :float
    add_column :partes, :horas_nocturna, :float
    add_column :partes, :horas_festivo, :float
  end

  def self.down
    remove_column :partes, :horas_festivo
    remove_column :partes, :horas_nocturna
    remove_column :partes, :horas_extra
    remove_column :partes, :horas_base
  end
end
