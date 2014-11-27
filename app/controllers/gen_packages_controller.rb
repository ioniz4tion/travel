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
	end	
end
