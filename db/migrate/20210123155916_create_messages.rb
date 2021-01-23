class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :recipient_id
      t.integer :res_book
      t.boolean :seen
      t.boolean :read

      t.timestamps
    end
  end
end
