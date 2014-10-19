class GenPackagesController < ApplicationController
	def home
		@city = GenPackage.find_by_name(params[:city])
	end
	def hotels
		@city = GenPackage.find_by_name(params[:city])
	end
	def restaurants
		@city = GenPackage.find_by_name(params[:city])
	end
	def attractions
		@city = GenPackage.find_by_name(params[:city])
	end
end
