class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :location
      t.string :tips

      t.timestamps
    end
  end
end
