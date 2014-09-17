class GuestsController < ApplicationController
	def index
		if retailer_signed_in?
			redirect_to(:controller=>"products")
		# elsif :authenticate_customer!
		# 	redirect_to(:controller=>"products")
		end

		@products = Product.order('created_at desc')

	end
end
