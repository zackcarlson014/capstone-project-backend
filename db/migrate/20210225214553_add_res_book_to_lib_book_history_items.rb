class AddResBookToLibBookHistoryItems < ActiveRecord::Migration[6.0]
  def change
    add_column :lib_book_history_items, :res_book, :integer
  end
end
