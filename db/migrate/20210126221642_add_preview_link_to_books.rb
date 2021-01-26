class AddPreviewLinkToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :preview_link, :string
  end
end
