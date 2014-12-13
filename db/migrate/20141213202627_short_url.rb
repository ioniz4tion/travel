class ShortUrl < ActiveRecord::Migration
  def change
  	add_column :gen_attractions, :short_url, :string
  	add_column :gen_hotels, :short_url, :string
  	add_column :gen_restaurants, :short_url, :string
  end
end
