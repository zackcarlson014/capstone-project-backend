class AddOriginalUserIdToUserLibBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :user_lib_books, :original_user_id, :integer
  end
end
