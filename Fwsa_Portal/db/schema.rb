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

ActiveRecord::Schema.define(version: 2022_08_18_043910) do

  create_table "active_storage_attachments", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", charset: "utf8", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "basic_details", charset: "utf8", force: :cascade do |t|
    t.string "student_name"
    t.date "dob"
    t.string "gender"
    t.string "address"
    t.bigint "primary_number"
    t.bigint "alternate_number"
    t.string "email_id"
    t.string "parent_name"
    t.string "parent_relation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "declaration", default: "yes"
  end

  create_table "educational_details", charset: "utf8", force: :cascade do |t|
    t.string "current_class"
    t.string "sslc_school_name"
    t.string "sslc_school_type"
    t.bigint "sslc_completion"
    t.bigint "sslc_maths_score"
    t.bigint "sslc_english_score"
    t.bigint "sslc_total_score"
    t.string "sslc_school_medium"
    t.string "higher_education_name"
    t.string "higher_education_type"
    t.bigint "higher_education_completion"
    t.string "higher_education_maths_score"
    t.string "higher_education_english_score"
    t.string "higher_education_computer_score"
    t.string "higher_education_total_score"
    t.string "higher_education_diploma_score"
    t.string "higher_education_medium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "basic_details_id"
    t.index ["basic_details_id"], name: "index_educational_details_on_basic_details_id"
  end

  create_table "family_details", charset: "utf8", force: :cascade do |t|
    t.string "parent_detail"
    t.string "mother_qualification"
    t.string "father_qualification"
    t.string "mother_occupation"
    t.string "mother_income"
    t.string "father_occupation"
    t.string "father_income"
    t.string "other_income"
    t.bigint "electricity_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "basic_details_id"
    t.index ["basic_details_id"], name: "index_family_details_on_basic_details_id"
  end

  create_table "galleries", charset: "utf8", force: :cascade do |t|
    t.binary "images"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "refferal_details", charset: "utf8", force: :cascade do |t|
    t.string "approach"
    t.string "refferal_person_details"
    t.string "refferal_person_name"
    t.bigint "refferal_person_number"
    t.string "refferal_person_relationship"
    t.string "additional_information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "basic_details_id"
    t.index ["basic_details_id"], name: "index_refferal_details_on_basic_details_id"
  end

  create_table "staffs", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "designation"
    t.string "experience"
    t.bigint "phone_number"
    t.string "email_id"
    t.integer "age"
    t.binary "aadhar_card_images"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.binary "profile"
  end

  create_table "statuses", charset: "utf8", force: :cascade do |t|
    t.integer "status"
    t.bigint "basic_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["basic_detail_id"], name: "index_statuses_on_basic_detail_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "educational_details", "basic_details", column: "basic_details_id"
  add_foreign_key "family_details", "basic_details", column: "basic_details_id"
  add_foreign_key "refferal_details", "basic_details", column: "basic_details_id"
  add_foreign_key "statuses", "basic_details"
end
