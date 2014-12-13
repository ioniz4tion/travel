class About < ActiveRecord::Base
	has_attached_file :image,	                  
	                  :default_url => "200x200.gif"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
