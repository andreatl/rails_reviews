class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :stars, :default => 0
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
