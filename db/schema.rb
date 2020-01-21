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

ActiveRecord::Schema.define(version: 20_200_117_235_152) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'commerce_types', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'commerces', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.string 'name'
    t.string 'description'
    t.bigint 'country_id', null: false
    t.string 'state'
    t.string 'city'
    t.string 'address'
    t.string 'landline'
    t.string 'mobile'
    t.string 'email'
    t.string 'website'
    t.string 'instagram'
    t.bigint 'commerce_type_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['commerce_type_id'], name: 'index_commerces_on_commerce_type_id'
    t.index ['country_id'], name: 'index_commerces_on_country_id'
    t.index ['user_id'], name: 'index_commerces_on_user_id'
  end

  create_table 'countries', force: :cascade do |t|
    t.string 'name'
    t.string 'region'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'favorites', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'commerce_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['commerce_id'], name: 'index_favorites_on_commerce_id'
    t.index ['user_id'], name: 'index_favorites_on_user_id'
  end

  create_table 'photos', force: :cascade do |t|
    t.string 'imageable_type', null: false
    t.bigint 'imageable_id', null: false
    t.string 'image_data'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[imageable_type imageable_id], name: 'index_photos_on_imageable_type_and_imageable_id'
  end

  create_table 'reservations', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'commerce_id', null: false
    t.integer 'seat'
    t.integer 'date_time'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['commerce_id'], name: 'index_reservations_on_commerce_id'
    t.index ['user_id'], name: 'index_reservations_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'mobile'
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'commerces', 'commerce_types'
  add_foreign_key 'commerces', 'countries'
  add_foreign_key 'commerces', 'users'
  add_foreign_key 'favorites', 'commerces'
  add_foreign_key 'favorites', 'users'
  add_foreign_key 'reservations', 'commerces'
  add_foreign_key 'reservations', 'users'
end
