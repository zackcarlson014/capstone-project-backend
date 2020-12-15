class CreateUserLibBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_lib_books do |t|
      t.integer :library_book_id
      t.integer :donor_id

      t.timestamps
    end
  end
end
