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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121114234441) do

  create_table "healthy_swap_queries", :force => true do |t|
    t.string   "favorite_cereal"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "product_swaps", :force => true do |t|
    t.integer  "product1_id"
    t.integer  "product2_id"
    t.string   "reason"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "calories"
    t.integer  "saturated_fat"
    t.string   "sugar_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
