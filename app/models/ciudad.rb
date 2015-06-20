class Ciudad < ActiveRecord::Base
  has_many :obras
  default_scope :order => 'nombre'
  validates_uniqueness_of :nombre
  validates_presence_of :nombre, :kilometraje, :dieta
end