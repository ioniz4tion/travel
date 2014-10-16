class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'

	before_filter :weather

	def weather
		@client = YahooWeather::Client.new
		@weather = @client.fetch(23417489)		
	end

end
