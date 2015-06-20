class Material < ActiveRecord::Base
  default_scope :order => 'nombre'
  validates_presence_of :nombre
  validates_uniqueness_of :nombre, :case_sensitive => false, :message => "ya existe."
  belongs_to :ud1material, :class_name => "Parte"
  belongs_to :ud2material, :class_name => "Parte"
  belongs_to :ud3material, :class_name => "Parte"
  belongs_to :ud4material, :class_name => "Parte"
  belongs_to :ud5material, :class_name => "Parte"
  belongs_to :ud6material, :class_name => "Parte"
  belongs_to :ud7material, :class_name => "Parte"
  belongs_to :ud8material, :class_name => "Parte"
  belongs_to :ud9material, :class_name => "Parte"
  belongs_to :ud10material, :class_name => "Parte"
  belongs_to :ud11material, :class_name => "Parte"
  belongs_to :ud12material, :class_name => "Parte"
  belongs_to :ud13material, :class_name => "Parte"
  belongs_to :ud14material, :class_name => "Parte"
  belongs_to :ud15material, :class_name => "Parte"
  belongs_to :ud16material, :class_name => "Parte"
  belongs_to :ud17material, :class_name => "Parte"
  belongs_to :ud18material, :class_name => "Parte"
  belongs_to :ud19material, :class_name => "Parte"
  belongs_to :ud20material, :class_name => "Parte"
end