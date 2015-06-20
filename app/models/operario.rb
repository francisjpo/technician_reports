class Operario < ActiveRecord::Base
  default_scope :order => 'apellidos'
  has_many :partes
  has_many :obras, :through => :partes
  validates_uniqueness_of :apellidos, :scope => :nombre,
        :case_sensitive => false, :message => "ya existe."

  validates_uniqueness_of :usuario, :case_sensitive => false,
        :message => "ya existe."

  validates_presence_of :nombre, :apellidos, :usuario, :contrasena
end