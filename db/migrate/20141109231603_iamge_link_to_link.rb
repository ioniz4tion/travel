class IamgeLinkToLink < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :image_link
  end
end
