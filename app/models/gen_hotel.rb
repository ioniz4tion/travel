class GenHotel < ActiveRecord::Base
	belongs_to :gen_package
	has_many :gen_hotel_images

	has_attached_file :image,
	                  :storage => :s3,
	                  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
	                  :default_url => "720x700.gif"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :image_thumb,
	                  :storage => :s3,
	                  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
	                  :default_url => "330x210.gif"
	validates_attachment_content_type :image_thumb, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => 'bpa-travel', :access_key_id => 'AKIAIQA6SQA5VEAF733Q', :secret_access_key => '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' }
  end
end
