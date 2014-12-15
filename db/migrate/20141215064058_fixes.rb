class Fixes < ActiveRecord::Migration
  def change
  	add_column :gen_packages, :iframe_url, :string
  	add_column :gen_packages, :url_name, :string
  end
end
