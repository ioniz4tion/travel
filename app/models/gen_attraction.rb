class GenAttraction < ActiveRecord::Base
	belongs_to :gen_package
	has_many :gen_attraction_images
end
