class CreateReservedBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :reserved_books do |t|
      t.integer :user_id
      t.integer :user_lib_book_id
      t.boolean :delivered, null: false, default: false

      t.timestamps
    end
  end
end
