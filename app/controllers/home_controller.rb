class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'

	before_filter :weather

	def weather
		@client = YahooWeather::Client.new
		@weather = []
		GenPackage.all.order(:name).each do |package|
			@weather.push(@client.fetch(package.code))
		end
	end

end
