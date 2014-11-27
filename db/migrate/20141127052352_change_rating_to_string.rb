class ChangeRatingToString < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :rating
  	add_column :gen_attractions, :rating, :string
  end
end
