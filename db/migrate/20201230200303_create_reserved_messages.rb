class CreateReservedMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :reserved_messages do |t|
      t.integer :user_id
      t.integer :reserved_book_id
      t.string :content

      t.timestamps
    end
  end
end
