class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_filter :vars, :weather

	def vars
		@gen_package = GenPackage.all.order(:name)
		@hol_package = HolPackage.all.order(:name)	
	end

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

end
