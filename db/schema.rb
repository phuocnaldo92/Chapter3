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

<<<<<<< 6563d2f4b467889ad661a3289ccc63b4c2846cdd

ActiveRecord::Schema.define(version: 20170411072907) do

=======
<<<<<<< a498c1fde12b5298ffcad7c2239c727429da67d3
<<<<<<< 41546238587a28a47e1e9129d4006ab45d93a415

ActiveRecord::Schema.define(version: 20170411072907) do

=======
ActiveRecord::Schema.define(version: 20170411055528) do
>>>>>>> chapter10
=======

ActiveRecord::Schema.define(version: 20170411072907) do

>>>>>>> test2
>>>>>>> test2

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
<<<<<<< 6563d2f4b467889ad661a3289ccc63b4c2846cdd
=======
<<<<<<< a498c1fde12b5298ffcad7c2239c727429da67d3
<<<<<<< 41546238587a28a47e1e9129d4006ab45d93a415
>>>>>>> test2
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
<<<<<<< 6563d2f4b467889ad661a3289ccc63b4c2846cdd
=======
=======
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
>>>>>>> chapter10
=======
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
>>>>>>> test2
>>>>>>> test2
  end

end
