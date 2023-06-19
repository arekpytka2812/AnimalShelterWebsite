# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_19_173500) do
  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "species_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["species_id"], name: "index_animals_on_species_id"
  end

  create_table "application_forms", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.string "status"
    t.integer "animal_id", null: false
    t.integer "shelter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_application_forms_on_animal_id"
    t.index ["shelter_id"], name: "index_application_forms_on_shelter_id"
  end

  create_table "cages", force: :cascade do |t|
    t.integer "cageNumber"
    t.integer "animal_id", null: false
    t.integer "shelter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_cages_on_animal_id"
    t.index ["shelter_id"], name: "index_cages_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "address"
    t.integer "animalNumber"
    t.integer "cagesNumber"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "species"
  add_foreign_key "application_forms", "animals"
  add_foreign_key "application_forms", "shelters"
  add_foreign_key "cages", "animals"
  add_foreign_key "cages", "shelters"
end
