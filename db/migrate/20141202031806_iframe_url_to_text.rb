class IframeUrlToText < ActiveRecord::Migration
  def change
  	remove_column :gen_hotels, :iframe_url
  	remove_column :gen_restaurants, :iframe_url
  	remove_column :gen_attractions, :iframe_url

  	add_column :gen_hotels, :iframe_url, :text
  	add_column :gen_restaurants, :iframe_url, :text
  	add_column :gen_attractions, :iframe_url, :text
  end
end
