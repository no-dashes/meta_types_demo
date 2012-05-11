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

ActiveRecord::Schema.define(:version => 20120511143058) do

  create_table "meta_type_members", :force => true do |t|
    t.integer  "meta_type_id"
    t.integer  "meta_type_property_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_type_properties", :force => true do |t|
    t.string   "sid",               :limit => nil
    t.string   "label",             :limit => nil,                    :null => false
    t.string   "property_type_sid", :limit => nil,                    :null => false
    t.boolean  "required",                         :default => false, :null => false
    t.boolean  "system",                           :default => false, :null => false
    t.string   "dimension",         :limit => nil
    t.string   "default_value",     :limit => nil
    t.string   "choices",           :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_types", :force => true do |t|
    t.string   "sid",        :limit => nil, :null => false
    t.string   "type",       :limit => nil
    t.string   "title",      :limit => nil, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meta_types", ["sid"], :name => "meta_types_sid_key", :unique => true
  add_index "meta_types", ["title"], :name => "meta_types_title_key", :unique => true

  create_table "things", :force => true do |t|
    t.integer  "meta_type_id"
    t.string   "title",             :limit => nil
    t.hstore   "properties_hstore"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
