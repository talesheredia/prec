# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160217173535) do

  create_table "precatorios", force: :cascade do |t|
    t.string   "expediente",              limit: 255
    t.integer  "numero",                  limit: 4
    t.datetime "data_apresentacao"
    t.string   "processo_administrativo", limit: 255
    t.string   "processo_primeiro_grau",  limit: 255
    t.string   "origem",                  limit: 255
    t.string   "pagador",                 limit: 255
    t.string   "credor",                  limit: 255
    t.string   "advogado",                limit: 255
    t.string   "objeto",                  limit: 255
    t.string   "ano",                     limit: 255
    t.string   "situacao_atual",          limit: 255
    t.string   "localizacao",             limit: 255
    t.string   "tribunal_origem",         limit: 255
    t.integer  "posicao_crescente",       limit: 4
    t.integer  "posicao_cronologica",     limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
