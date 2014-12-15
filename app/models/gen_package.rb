class GenPackage < ActiveRecord::Base
	has_many :gen_restaurants
	has_many :gen_hotels
	has_many :gen_attractions
	has_many :gen_images
	has_many :answer_values
	has_many :gen_package_paragraphs

	has_attached_file :image,	                  
	                  :default_url => "720x700.gif"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
