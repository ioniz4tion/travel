class Addwebsite < ActiveRecord::Migration
  def change
  	  add_column :gen_attractions, :website, :string

  end
end
