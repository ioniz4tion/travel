class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def initialize
	  @city_names = ["Hawaii","London","New York","Seattle","Sydney","Washington"]
	  @city_links = ["hawaii","london","new_york","seattle","sydney","washington"]

	  @holiday_names = ["Christmas","Spring Break","Thanksgiving","Valentine's Day"]
	  @holiday_links = ["christmas","spring_break","thanksgiving","valentines"]
  end
end