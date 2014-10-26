class HomeController < ApplicationController
	require 'rubygems'
	require 'yahoo_weather'
	require 'date'

	before_filter :weather
	before_filter :home_vars

	def weather
		@client = YahooWeather::Client.new
		@weather = []
		# GenPackage.all.order(:name).each do |package|
		# 	@weather.push(@client.fetch(package.code))
		# end
	end

	def home_vars
		@temp = GenPackage.all
		@slideshow = []
		@temp.each do |slide|
			@slideshow.push(slide.gen_images)
		end
	end

end
