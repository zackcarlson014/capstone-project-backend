class AddGoogleIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :google_id, :string
  end
end
