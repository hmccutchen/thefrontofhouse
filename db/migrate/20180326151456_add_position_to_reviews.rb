class AddPositionToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :position, :string
  end
end
