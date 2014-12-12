Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
Paperclip::Attachment.default_options.merge!(
	:storage => :s3,
	:s3_credentials => {
		:bucket => "bpa-travel",
		:access_key_id => ENV['AMAZON_ACCESS_KEY'],
      :secret_access_key => ENV['AMAZON_SECRET_KEY']
	}
)
