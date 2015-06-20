class Parte < ActiveRecord::Base
  default_scope :order => 'id desc'
  validates_presence_of :horas_base
  validates_length_of :contrasena, :minimum => 5,
    :too_short => "no es válida."
  belongs_to :operario
  belongs_to :obra
  has_many :materiales1, :class_name => "Material", :foreign_key => "ud1material"
  has_many :materiales2, :class_name => "Material", :foreign_key => "ud2material"
  has_many :materiales3, :class_name => "Material", :foreign_key => "ud3material"
  has_many :materiales4, :class_name => "Material", :foreign_key => "ud4material"
  has_many :materiales5, :class_name => "Material", :foreign_key => "ud5material"
  has_many :materiales6, :class_name => "Material", :foreign_key => "ud6material"
  has_many :materiales7, :class_name => "Material", :foreign_key => "ud7material"
  has_many :materiales8, :class_name => "Material", :foreign_key => "ud8material"
  has_many :materiales9, :class_name => "Material", :foreign_key => "ud9material"
  has_many :materiales10, :class_name => "Material", :foreign_key => "ud10material"
  has_many :materiales11, :class_name => "Material", :foreign_key => "ud11material"
  has_many :materiales12, :class_name => "Material", :foreign_key => "ud12material"
  has_many :materiales13, :class_name => "Material", :foreign_key => "ud13material"
  has_many :materiales14, :class_name => "Material", :foreign_key => "ud14material"
  has_many :materiales15, :class_name => "Material", :foreign_key => "ud15material"
  has_many :materiales16, :class_name => "Material", :foreign_key => "ud16material"
  has_many :materiales17, :class_name => "Material", :foreign_key => "ud17material"
  has_many :materiales18, :class_name => "Material", :foreign_key => "ud18material"
  has_many :materiales19, :class_name => "Material", :foreign_key => "ud19material"
  has_many :materiales20, :class_name => "Material", :foreign_key => "ud20material"
end