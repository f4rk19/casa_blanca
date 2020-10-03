# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_30_060722) do

  create_table "casa_facilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "casa_id"
    t.bigint "facility_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casa_id"], name: "index_casa_facilities_on_casa_id"
    t.index ["facility_id"], name: "index_casa_facilities_on_facility_id"
  end

  create_table "casas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "information"
    t.text "important_information"
    t.text "detail"
    t.text "location"
    t.text "cancel"
    t.text "description"
    t.text "policy"
    t.time "check_in"
    t.time "check_out"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.bigint "shared_room_id"
    t.bigint "private_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["private_room_id"], name: "index_casas_on_private_room_id"
    t.index ["shared_room_id"], name: "index_casas_on_shared_room_id"
    t.index ["user_id"], name: "index_casas_on_user_id"
  end

  create_table "facilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "facilityname"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "src"
    t.bigint "casa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casa_id"], name: "index_images_on_casa_id"
  end

  create_table "nationalities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "countryname"
  end

  create_table "private_rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "privateroom_name"
    t.integer "privateroom_bathroom"
    t.integer "privateroom_grade"
    t.integer "privatecapacity"
    t.text "content"
    t.bigint "casa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casa_id"], name: "index_private_rooms_on_casa_id"
  end

  create_table "shared_rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sharedroom_name"
    t.integer "sharedroom_bathroom"
    t.integer "sharedroom_grade"
    t.integer "sharedcapacity"
    t.text "content"
    t.bigint "casa_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casa_id"], name: "index_shared_rooms_on_casa_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "first_name", null: false
    t.string "family_name", null: false
    t.date "birthday", null: false
    t.integer "gender", null: false
    t.boolean "admin", default: false
    t.bigint "nationality_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nationality_id"], name: "index_users_on_nationality_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "casa_facilities", "casas"
  add_foreign_key "casa_facilities", "facilities"
  add_foreign_key "images", "casas"
  add_foreign_key "private_rooms", "casas"
  add_foreign_key "shared_rooms", "casas"
end
