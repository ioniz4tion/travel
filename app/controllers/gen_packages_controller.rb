class GenPackagesController < ApplicationController	
	
	def home
		@city = GenPackage.find_by_name(params[:city])
		@slideshow = []
		GenPackage.find_by_name(params[:city]).gen_images.all.each do |package|
			@slideshow << {name: package.name, link: package.link, description: package.description}
		end
	end

	def hotels
		@city = GenPackage.find_by_name(params[:city])
	end

	def restaurants
		@city = GenPackage.find_by_name(params[:city])
	end

	def attractions
		@city = GenPackage.find_by_name(params[:city])
		@slideshow = []
		GenPackage.find_by_name(params[:city]).gen_attractions.all.each do |package|
			@slideshow << {name: package.name, link: package.link, description: package.image_description}
		end
		@packages = @city.gen_attractions.all

		# @attractions = []
		# @city.gen_attractions.all.each do |attraction|
		# 	@attractions << {name: attraction.name, 
		# 		description: attraction.description, 
		# 		pricing: attraction.pricing,
		# 		location: attraction.location,
		# 		link: attraction.link,
		# 		phone: attraction.phone,
		# 		hours: attraction.hours,
		# 		rating: attraction.rating,
		# 		iframe_id: attraction.imap_id,
		# 		website: attraction.website}
		# end
	end	
end
