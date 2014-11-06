class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'
	extend ActiveModel::Naming



	before_filter :weather
	before_filter :home_vars

	def weather
		begin
			@client = YahooWeather::Client.new
			@weather = []
			GenPackage.all.order(:name).each do |package|
				@weather.push(@client.fetch(package.code))
			end
		rescue SocketError => e
		end		
	end

	def home_vars
		@slideshow = []
		GenPackage.all.each do |package|
			@slideshow << {name: package.name, link: package.image_link, description: package.image_description}
		end
	end

end
