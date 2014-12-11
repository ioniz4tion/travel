class RestaurantHotelColumns < ActiveRecord::Migration
  def change
  	add_column :gen_hotels, :phone, :string
  	add_column :gen_hotels, :website, :string
  	add_column :gen_hotels, :hours, :string
  	add_column :gen_hotels, :rating, :string
  	add_column :gen_hotels, :iframe_id, :string

  	add_column :gen_restaurants, :phone, :string
  	add_column :gen_restaurants, :website, :string
  	add_column :gen_restaurants, :hours, :string
  	add_column :gen_restaurants, :rating, :string
  	add_column :gen_restaurants, :iframe_id, :string
  end
end
