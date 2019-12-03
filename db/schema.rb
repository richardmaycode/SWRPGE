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

ActiveRecord::Schema.define(version: 2019_12_03_022117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "defense"
    t.integer "encumbrance"
    t.integer "hp"
    t.integer "price"
    t.integer "rarity"
    t.integer "soak"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_armors_on_source_id"
  end

  create_table "attitudes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_attitudes_on_source_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id", null: false
    t.integer "free_ranks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_careers_on_source_id"
  end

  create_table "careers_skills", id: false, force: :cascade do |t|
    t.bigint "career_id", null: false
    t.bigint "skill_id", null: false
    t.index ["career_id"], name: "index_careers_skills_on_career_id"
    t.index ["skill_id"], name: "index_careers_skills_on_skill_id"
  end

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_character_classes_on_source_id"
  end

  create_table "character_stats", force: :cascade do |t|
    t.integer "brawn"
    t.integer "agility"
    t.integer "intellect"
    t.integer "cunning"
    t.integer "willpower"
    t.integer "presence"
    t.integer "wound_threshold"
    t.integer "strain_threshold"
    t.integer "experience"
    t.bigint "statable_id"
    t.string "statable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["statable_type", "statable_id"], name: "index_character_stats_on_statable_type_and_statable_id"
  end

  create_table "characteristics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "abbreviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "duties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_duties_on_source_id"
  end

  create_table "force_abilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.bigint "force_power_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["force_power_id"], name: "index_force_abilities_on_force_power_id"
    t.index ["source_id"], name: "index_force_abilities_on_source_id"
  end

  create_table "force_powers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_force_powers_on_source_id"
  end

  create_table "hooks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_hooks_on_source_id"
  end

  create_table "obligations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_obligations_on_source_id"
  end

  create_table "primary_motivations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_primary_motivations_on_source_id"
  end

  create_table "secondary_motivations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.bigint "primary_motivation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["primary_motivation_id"], name: "index_secondary_motivations_on_primary_motivation_id"
    t.index ["source_id"], name: "index_secondary_motivations_on_source_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "abbreviation"
    t.string "name"
    t.text "description"
    t.bigint "characteristic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["characteristic_id"], name: "index_skills_on_characteristic_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name"
    t.integer "page"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "source_id"
    t.string "statable_type"
    t.bigint "statable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["source_id"], name: "index_species_on_source_id"
    t.index ["statable_type", "statable_id"], name: "index_species_on_statable_type_and_statable_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string "abbreviation"
    t.string "name"
    t.text "description"
    t.boolean "ranked", default: true
    t.boolean "forceTalent", default: true
    t.string "activation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "armors", "sources"
  add_foreign_key "attitudes", "sources"
  add_foreign_key "careers", "sources"
  add_foreign_key "careers_skills", "careers"
  add_foreign_key "careers_skills", "skills"
  add_foreign_key "character_classes", "sources"
  add_foreign_key "duties", "sources"
  add_foreign_key "force_abilities", "force_powers"
  add_foreign_key "force_abilities", "sources"
  add_foreign_key "force_powers", "sources"
  add_foreign_key "hooks", "sources"
  add_foreign_key "obligations", "sources"
  add_foreign_key "primary_motivations", "sources"
  add_foreign_key "secondary_motivations", "primary_motivations"
  add_foreign_key "secondary_motivations", "sources"
  add_foreign_key "skills", "characteristics"
  add_foreign_key "species", "sources"
end
