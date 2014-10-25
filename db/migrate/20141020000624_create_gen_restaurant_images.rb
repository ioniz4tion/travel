class CreateGenRestaurantImages < ActiveRecord::Migration
  def change
    create_table :gen_restaurant_images do |t|
    	t.string :name
    	t.text :description
    	t.string :link
    	t.belongs_to :gen_restaurant
      t.timestamps
    end
  end
end
