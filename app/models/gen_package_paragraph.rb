class GenPackageParagraph < ActiveRecord::Base
	belongs_to :gen_package

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end