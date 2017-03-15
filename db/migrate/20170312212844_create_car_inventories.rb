class CreateCarInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :car_inventories do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :image
      t.integer :price
      t.integer :year
      t.integer :milage
      t.string :amenities
      t.string :financing
      t.integer :previous_owners

      t.timestamps
    end
  end
end
