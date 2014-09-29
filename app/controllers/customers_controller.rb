class CustomersController < ApplicationController
	@account_type = "Customer"
  
  # before_action :authenticate_customer!

	def index

		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])	
	end

	def add_product_to_cart
      @cart = Cart.create
      @product = Product.find(params[:id])

      @cart.add(@product, @product.price)

      redirect_to customer_path
    end

    def remove_product_from_cart
      @cart.remove(@product)
    end

    def clear_cart
    	@cart.clear
    end
end
