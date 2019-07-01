class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :listing_id
      t.text :headline
      t.text :image
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
