class GenPackage < ActiveRecord::Base
	has_many :gen_restaurants
	has_many :gen_hotels
	has_many :gen_attractions
	has_many :gen_images
	has_many :answer_values
end
