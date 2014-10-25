class HolPackagesController < ApplicationController
	def home
		@city = HolPackage.find_by_name(params[:city])
	end
	def hotels
		@city = HolPackage.find_by_name(params[:city])
	end
	def restaurants
		@city = HolPackage.find_by_name(params[:city])
	end
	def attractions
		@city = HolPackage.find_by_name(params[:city])
	end
end
