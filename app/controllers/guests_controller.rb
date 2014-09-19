class GuestsController < ApplicationController
	layout "guests"
	def index
		if retailer_signed_in?
		  	redirect_to(:controller=>"retailers")
		elsif customer_signed_in?
		  	redirect_to(:controller=>"customers")
		elsif driver_signed_in?
		  	redirect_to(:controller=>"drivers")
		else 
		  	render("index")
		end

		@products = Product.order('created_at desc')
	end
end
