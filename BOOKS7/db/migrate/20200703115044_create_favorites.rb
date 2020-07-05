class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|

    t.integer "user_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_favorites_on_book_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
    t.timestamps
    end
  end
end
