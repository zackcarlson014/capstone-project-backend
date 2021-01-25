class CreateLibBookHistoryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :lib_book_history_items do |t|
      t.integer :user_id
      t.integer :user_lib_book_id

      t.timestamps
    end
  end
end
