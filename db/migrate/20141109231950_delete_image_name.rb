class DeleteImageName < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :image_name
  end
end
