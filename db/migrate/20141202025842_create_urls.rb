class CreateUrls < ActiveRecord::Migration
  def change
    add_column :gen_hotels, :website_url, :string
    add_column :gen_hotels, :iframe_url, :string
    add_column :gen_restaurants, :website_url, :string
    add_column :gen_restaurants, :iframe_url, :string
    add_column :gen_attractions, :website_url, :string
    add_column :gen_attractions, :iframe_url, :string
  end
end
