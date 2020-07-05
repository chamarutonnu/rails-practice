class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_comments_on_book_id"
    t.index ["user_id"], name: "index_book_comments_on_user_id"
    t.timestamps
    end
  end
end
