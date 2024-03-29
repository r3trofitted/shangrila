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

ActiveRecord::Schema[7.2].define(version: 2024_01_19_075146) do
  create_table "characters", force: :cascade do |t|
    t.boolean "finalized", default: false, null: false
    t.string "player", null: false
    t.string "name", null: false
    t.string "role", null: false
    t.string "handle"
    t.string "origins"
    t.string "personality"
    t.string "clothing"
    t.string "hairstyle"
    t.string "affectation"
    t.string "opinion_on_people"
    t.string "most_valued_thing"
    t.string "most_valued_person"
    t.string "most_valued_possession"
    t.string "original_background"
    t.string "childhood_environment"
    t.string "family_crisis"
    t.json "friends"
    t.json "enemies"
    t.json "tragic_love_affairs"
    t.string "life_goal"
    t.json "role_lifepath"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
