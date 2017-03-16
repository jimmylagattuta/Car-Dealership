class AddOrigintoProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :car_inventories, :origin, :string
  end
end
