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

ActiveRecord::Schema.define(version: 20141215060822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hastags", force: true do |t|
    t.text     "etiqueta"
    t.text     "intencion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hastags_tweets", force: true do |t|
    t.integer "tweet_id"
    t.integer "hastag_id"
  end

  create_table "palabras", force: true do |t|
    t.text     "palabrac"
    t.text     "intencionp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palabras_tweets", force: true do |t|
    t.integer "tweet_id"
    t.integer "palabra_id"
  end

  create_table "tweets", force: true do |t|
    t.text     "id_tweet"
    t.integer  "usuario_id"
    t.text     "mensaje"
    t.integer  "retweet_contador"
    t.datetime "fecha"
    t.float    "lat"
    t.float    "long"
    t.text     "sentimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.text     "id_usuario"
    t.text     "nombre"
    t.integer  "contador_seguidores"
    t.text     "descripcion"
    t.text     "nick"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
