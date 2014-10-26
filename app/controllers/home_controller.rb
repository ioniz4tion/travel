class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'

	before_filter :weather
	before_filter :home_vars

	def weather
		@client = YahooWeather::Client.new
		@weather = []
		GenPackage.all.order(:name).each do |package|
			@weather.push(@client.fetch(package.code))
		end
	end

	def home_vars
		@slideshow = []
		GenPackage.all.each do |package|
			@slideshow << {name: package.name, link: package.image_link, description: package.image_description}
		end
	end

end