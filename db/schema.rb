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

ActiveRecord::Schema.define(version: 0) do

  create_table "movies", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 160, null: false, comment: "æ˜ ç”»ã\u0081®ã‚¿ã‚¤ãƒˆãƒ«ã€‚é‚¦é¡Œãƒ»æ´‹é¡Œã\u0081¯ä¸€æ—¦è€ƒã\u0081ˆã\u0081ªã\u0081\u008Fã\u0081¦OK"
    t.string "year", limit: 45, comment: "å…¬é–‹å¹´"
    t.text "description", comment: "æ˜ ç”»ã\u0081®èª¬æ˜Žæ–‡"
    t.string "image_url", limit: 150, comment: "æ˜ ç”»ã\u0081®ãƒ\u009Dã‚¹ã‚¿ãƒ¼ç”»åƒ\u008Fã\u0081Œæ ¼ç´\u008Dã\u0081•ã‚Œã\u0081¦ã\u0081„ã‚‹URL"
    t.boolean "is_showing", null: false, comment: "ä¸Šæ˜ ä¸­ã\u0081‹ã\u0081©ã\u0081†ã\u0081‹"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "name_UNIQUE", unique: true
  end

end
