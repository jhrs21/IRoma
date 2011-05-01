# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110429210815) do

  create_table "avisos", :force => true do |t|
    t.integer  "nro_aviso"
    t.datetime "f_creacion"
    t.datetime "f_cierre"
    t.integer  "vehiculo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centrals", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correctivos", :force => true do |t|
    t.integer  "nro_planilla"
    t.integer  "aviso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preventivos", :force => true do |t|
    t.integer  "nro_planilla"
    t.string   "tipo"
    t.text     "descripcion"
    t.integer  "aviso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repuestos", :force => true do |t|
    t.string   "serial"
    t.string   "nombre"
    t.datetime "f_compra"
    t.integer  "cantidad"
    t.float    "precio"
    t.integer  "vehiculo_id"
    t.integer  "correctivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "unitario"
  end

  create_table "tipo_mants", :force => true do |t|
    t.string   "tipo"
    t.integer  "preventivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "tlf"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehiculos", :force => true do |t|
    t.string   "placa"
    t.string   "equipo"
    t.integer  "ano"
    t.string   "denominacion"
    t.integer  "central_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
