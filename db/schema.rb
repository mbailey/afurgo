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

ActiveRecord::Schema.define(:version => 20110201142636) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "country",    :default => "australia"
    t.string   "region",     :default => "australia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "lede"
    t.text     "details"
    t.string   "afurgo_url"
    t.string   "profile_pic_url"
    t.text     "fbshare_msg"
    t.string   "kind",             :default => "dog"
    t.string   "sex"
    t.string   "age"
    t.string   "city"
    t.string   "outlet_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "phone"
    t.string   "opening_hours"
    t.datetime "first_seen"
    t.datetime "adopted_at"
    t.string   "listing_page_url"
    t.string   "breed"
    t.string   "size"
    t.datetime "adopted"
    t.datetime "approved"
  end

end
