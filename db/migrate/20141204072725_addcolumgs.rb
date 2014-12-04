class Addcolumgs < ActiveRecord::Migration
  def change
  	add_attachment :gen_hotels, :image
  	add_attachment :gen_hotels, :image_thumb

  	add_attachment :gen_restaurants, :image
  	add_attachment :gen_restaurants, :image_thumb
  end
end
