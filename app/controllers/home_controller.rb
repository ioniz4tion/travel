class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'
	
	extend ActiveModel::Naming

	before_filter :home_vars	

	def home_vars
		@slideshow = []
		GenPackage.all.each do |package|
			@slideshow << {name: package.name, link: package.image_link, description: package.image_description}
		end
	end

end
