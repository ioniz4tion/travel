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
		GenPackage.all.order(:name).each do |package|
			@slideshow << {name: package.name, link: package.image.url, description: package.image_description}
		end
		begin
			@client = YahooWeather::Client.new
			@weather = []
			GenPackage.all.order(:name).each do |package|
				@weather.push(@client.fetch(package.code))
			end
		rescue Exception => e
		end
  end

  def converter
  end

  def convert
  	require 'money'
  	require 'money/bank/google_currency'

  	Money::Bank::GoogleCurrency.ttl_in_seconds = 86400
  	Money.default_bank = Money::Bank::GoogleCurrency.new

  	money = params[:amount].to_money(params[:from])
  	result = money.exchange_to(params[:to])
  	result = "#{result} #{params[:to]}"

  	respond_to do |format|
  		format.html { render html: result, status: :ok }
  	end
  end

  def time
  	require 'timezone'

  	@timezones = Timezone::Zone.names
  end

  def time_convert
  	#require 'timezone'

  	result = params[:time].in_time_zone(params[:from])
  	
   	#timezone = Timezone::Zone.new :zone => params[:from]
		#result = timezone.time params[:time]
		# end_timezone = Timezone::Zone.new :zone => params[:to]
		# result = end_timezone.time start
   # result = 5
  	respond_to do |format|
  		format.html { render html: result, status: :ok }
  	end
  end
end
