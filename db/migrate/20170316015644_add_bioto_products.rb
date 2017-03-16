class AddBiotoProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :car_inventories, :bio, :text
  end
end
