class Removeattractionimages < ActiveRecord::Migration
  def up
  	add_column :gen_attractions, :image_description, :text
  	add_column :gen_attractions, :image_name, :string
  	add_column :gen_attractions, :image_link, :string
  end
  def down
  	no
  end
end
