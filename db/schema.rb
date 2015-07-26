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

ActiveRecord::Schema.define(version: 20150726072909) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "commenter_id"
    t.integer  "recipe_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["commenter_id"], name: "index_comments_on_commenter_id"
  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id"

  create_table "favorite_recipes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorite_recipes", ["recipe_id"], name: "index_favorite_recipes_on_recipe_id"
  add_index "favorite_recipes", ["user_id"], name: "index_favorite_recipes_on_user_id"

  create_table "ingredient_measurements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.string   "unit_of_measure"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_photos", force: :cascade do |t|
    t.string   "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "serving"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "replies", force: :cascade do |t|
    t.text     "text"
    t.integer  "replier_id"
    t.integer  "comments_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "replies", ["comments_id"], name: "index_replies_on_comments_id"
  add_index "replies", ["replier_id"], name: "index_replies_on_replier_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.text     "bio"
    t.string   "avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
