class AddColumnsToRestauratnsHotels < ActiveRecord::Migration
  def change
  	add_column :gen_restaurants, :image_description, :text
  	add_column :gen_hotels, :image_description, :text
  end
end
