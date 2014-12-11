class AttractionImages < ActiveRecord::Migration
  def change
  	add_attachment :gen_attractions, :image
  	add_attachment :gen_attractions, :image_thumb
  end
end
