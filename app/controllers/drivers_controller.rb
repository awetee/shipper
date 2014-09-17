class DriversController < ApplicationController
	@account_type = "Driver"
	before_action :authenticate_driver!

  def index
  	
  end
end
