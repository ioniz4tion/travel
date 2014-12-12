class GenAttraction < ActiveRecord::Base
	belongs_to :gen_package
	has_many :gen_attraction_images	
  
	has_attached_file :image,	                  
	                  :default_url => "720x700.gif"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
	has_attached_file :image_thumb,	                  
	                  :default_url => "330x210.gif"
	validates_attachment_content_type :image_thumb, :content_type => /\Aimage\/.*\Z/

end
