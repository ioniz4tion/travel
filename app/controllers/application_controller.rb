class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :home_vars

	def home_vars
		@gen_package = GenPackage.all
		@hol_package = HolPackage.all
	end

	# def weather
	# 	begin
	# 		@client = YahooWeather::Client.new
	# 		@weather = []
	# 		GenPackage.all.order(:name).each do |package|
	# 			@weather.push(@client.fetch(package.code))
	# 		end
	# 	rescue SocketError => e
	# 	end		
	# end

  def index
  	@slideshow = []
		GenPackage.all.each do |package|
			@slideshow << {name: package.name, link: package.image_link, description: package.image_description}
		end
		begin
			@client = YahooWeather::Client.new
			@weather = []
			GenPackage.all.order(:name).each do |package|
				@weather.push(@client.fetch(package.code))
			end
		rescue SocketError => e
		end
  end
end
