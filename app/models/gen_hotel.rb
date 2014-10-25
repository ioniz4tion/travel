class GenHotel < ActiveRecord::Base
	belongs_to :gen_package
	has_many :gen_hotel_images
end
