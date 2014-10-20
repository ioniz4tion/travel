class UpdateGenPackages < ActiveRecord::Migration
  def up
  	remove_column :gen_packages, :link
  	add_column :gen_packages, :description, :text
  end
  def down
  	no
  end
end
