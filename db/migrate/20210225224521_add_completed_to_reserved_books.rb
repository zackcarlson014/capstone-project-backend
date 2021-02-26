class AddCompletedToReservedBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :reserved_books, :completed, :boolean
  end
end
