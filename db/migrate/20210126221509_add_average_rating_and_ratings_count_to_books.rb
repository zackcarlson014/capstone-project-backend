class AddAverageRatingAndRatingsCountToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :average_rating, :integer
    add_column :books, :ratings_count, :integer
  end
end
