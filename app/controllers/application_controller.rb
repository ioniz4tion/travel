class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :home_vars

	def home_vars
		@gen_package = GenPackage.all
		@hol_package = HolPackage.all
	end

  def sitemap
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

  	@timezones = Timezone::Zone.names.sort
  end

  def time_convert
  	require 'timezone'
  	require 'date'
  	require 'time'

    Time.zone = params[:from]
    temp = Time.zone.parse(params[:time])
    final_time = temp.in_time_zone(params[:to])


    
  
    if final_time.hour > 12 and final_time.hour <= 23
      result = (final_time.hour - 12).to_s
      type = "PM"
    elsif final_time.hour == 12
      result = (final_time.hour).to_s
      type = "PM"
    elsif final_time.hour == 0
      result = (final_time.hour + 12).to_s
      type = "AM"
    else
      result = final_time.hour.to_s
      type = "AM"
    end

    if final_time.min < 10
      result = result.to_s + ":0" + final_time.min.to_s
    else
      result = result.to_s + ":" + final_time.min.to_s
    end

    if final_time.sec < 10
      result = result.to_s + ".0" + final_time.sec.to_s
    else
      result = result.to_s + "." + final_time.sec.to_s
    end

    result = result.to_s + " " + type + " " + params[:to].to_s
  # 	#d = params[:date]
		# t = params[:time]

  # 	#d = Date.parse(d)
		# t = Time.parse(t)

  # 	timezone = Timezone::Zone.new :zone => params[:from]
		# #dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min, t.sec)
  # 	# start = dt.in_time_zone(params[:from])
  #   result = timezone.time(t)

  #   result = result.in_time_zone(params[:to])
    #standard = dt.utc
    #timezone = Timezone::Zone.new :zone => params[:to]
  	#result = standard.in_time_zone(params[:to])

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
