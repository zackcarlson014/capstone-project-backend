class CreateUserWishBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_wish_books do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
