class ChangeButtonToString < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :button_id
  	add_column :gen_attractions, :button_id, :string
  end
end
