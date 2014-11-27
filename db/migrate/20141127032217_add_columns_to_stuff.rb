class AddColumnsToStuff < ActiveRecord::Migration
  def change
  	add_column :gen_attractions, :phone, :string
  	add_column :gen_attractions, :hours, :integer
  	add_column :gen_attractions, :rating, :integer
  	add_column :gen_attractions, :imap_id, :integer
  	add_column :gen_attractions, :button_id, :integer
  end
end
