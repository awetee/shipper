class RetailersController < ApplicationController
	@account_type = "Retailer"
	
  def index

  	redirect_to :controller => "products"
  end
end
