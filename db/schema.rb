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

ActiveRecord::Schema.define(version: 2021_06_24_215956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collection_posts", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "collections", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "title"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_category_posts", force: :cascade do |t|
    t.integer "post_id"
    t.integer "food_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "ingredient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "main_id"
    t.index ["main_id"], name: "index_ingredients_on_main_id"
  end

  create_table "post_ingredients", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "ingredient_id", null: false
    t.integer "amount"
    t.integer "measure"
    t.bigint "ingr_replica1_id"
    t.bigint "ingr_replica2_id"
    t.bigint "ingr_replica3_id"
    t.bigint "ingr_replica4_id"
    t.bigint "ingr_replica5_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingr_replica1_id"], name: "index_post_ingredients_on_ingr_replica1_id"
    t.index ["ingr_replica2_id"], name: "index_post_ingredients_on_ingr_replica2_id"
    t.index ["ingr_replica3_id"], name: "index_post_ingredients_on_ingr_replica3_id"
    t.index ["ingr_replica4_id"], name: "index_post_ingredients_on_ingr_replica4_id"
    t.index ["ingr_replica5_id"], name: "index_post_ingredients_on_ingr_replica5_id"
    t.index ["ingredient_id"], name: "index_post_ingredients_on_ingredient_id"
    t.index ["post_id"], name: "index_post_ingredients_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name", null: false
    t.string "title", null: false
    t.text "content"
    t.string "image"
    t.string "time"
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "number_of_servings"
    t.integer "complexity"
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "role", default: 0
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredients", "ingredients", column: "main_id"
  add_foreign_key "post_ingredients", "ingredients"
  add_foreign_key "post_ingredients", "ingredients", column: "ingr_replica1_id"
  add_foreign_key "post_ingredients", "ingredients", column: "ingr_replica2_id"
  add_foreign_key "post_ingredients", "ingredients", column: "ingr_replica3_id"
  add_foreign_key "post_ingredients", "ingredients", column: "ingr_replica4_id"
  add_foreign_key "post_ingredients", "ingredients", column: "ingr_replica5_id"
  add_foreign_key "post_ingredients", "posts"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "users"
end
