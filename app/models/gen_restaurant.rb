class GenRestaurant < ActiveRecord::Base
	belongs_to :gen_package
	has_many :gen_restaurant_images
end
