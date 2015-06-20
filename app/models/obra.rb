class Obra < ActiveRecord::Base
  belongs_to :ciudad
  has_many :partes
  has_many :operarios, :through => :partes
  validates_uniqueness_of :nombre, :case_sensitive => false, :message => "ya existe."
end
