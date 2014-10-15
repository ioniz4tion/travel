class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_filter :vars

	def vars
		@gen_package = GenPackage.all
		@hol_package = HolPackage.all	
	end

end
