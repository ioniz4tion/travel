class Genpackageimagedtuff < ActiveRecord::Migration
  def change
  	add_column :gen_packages, :image_name, :string
  	add_column :gen_packages, :image_link, :string
  	add_column :gen_packages, :image_description, :text
  end
end
