class ChangeHoursToString < ActiveRecord::Migration
  def change
  	remove_column :gen_attractions, :hours
  	add_column :gen_attractions, :hours, :string
  end
end
