# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091026112004) do

  create_table "ciudades", :force => true do |t|
    t.string   "nombre"
    t.float    "kilometraje"
    t.string   "dieta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materiales", :force => true do |t|
    t.string   "nombre"
    t.string   "referencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "obras", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "ciudad_id"
    t.integer  "operario_id"
    t.integer  "parte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operarios", :force => true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "usuario"
    t.string   "contrasena"
    t.integer  "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partes", :force => true do |t|
    t.integer  "operario_id"
    t.integer  "obra_id"
    t.float    "ud1"
    t.integer  "ud1material_id"
    t.float    "ud2"
    t.integer  "ud2material_id"
    t.float    "ud3"
    t.integer  "ud3material_id"
    t.float    "ud4"
    t.integer  "ud4material_id"
    t.float    "ud5"
    t.integer  "ud5material_id"
    t.float    "ud6"
    t.integer  "ud6material_id"
    t.float    "ud7"
    t.integer  "ud7material_id"
    t.float    "ud8"
    t.integer  "ud8material_id"
    t.float    "ud9"
    t.integer  "ud9material_id"
    t.float    "ud10"
    t.integer  "ud10material_id"
    t.float    "ud11"
    t.integer  "ud11material_id"
    t.float    "ud12"
    t.integer  "ud12material_id"
    t.float    "ud13"
    t.integer  "ud13material_id"
    t.float    "ud14"
    t.integer  "ud14material_id"
    t.float    "ud15"
    t.integer  "ud15material_id"
    t.float    "ud16"
    t.integer  "ud16material_id"
    t.float    "ud17"
    t.integer  "ud17material_id"
    t.float    "ud18"
    t.integer  "ud18material_id"
    t.float    "ud19"
    t.integer  "ud19material_id"
    t.float    "ud20"
    t.integer  "ud20material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "horas_base"
    t.float    "horas_extra"
    t.float    "horas_nocturna"
    t.float    "horas_festivo"
    t.string   "contrasena"
  end

end
