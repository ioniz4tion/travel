class CreateGenHotelImages < ActiveRecord::Migration
  def change
    create_table :gen_hotel_images do |t|
    	t.string :name
    	t.text :description
    	t.string :link
    	t.belongs_to :gen_hotel
      t.timestamps
    end
  end
end
