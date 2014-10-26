class GenPackage < ActiveRecord::Base
	has_many :gen_restaurants
	has_many :gen_hotels
	has_many :gen_attractions
	has_many :gen_images

	alias_attribute :link, :image_link
  alias_attribute :description, :image_description
end
