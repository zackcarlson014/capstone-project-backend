class CreateUserWishBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_wish_books do |t|
      t.integer :donatee_id
      t.integer :wish_list_book_id

      t.timestamps
    end
  end
end
