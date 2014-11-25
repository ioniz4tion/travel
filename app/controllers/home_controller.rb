class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'
	require 'resolv-replace'
	require 'ping'

	before_filter :weather
	before_filter :home_vars

	def internet_connection?
		Ping.pingecho "google.com",1,80
	end

	def weather
		if internet_connection?
			@client = YahooWeather::Client.new
		end
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
