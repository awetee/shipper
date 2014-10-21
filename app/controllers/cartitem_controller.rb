class CartitemController < ApplicationController
before_filter :initialize_cart

	def add_product_to_cart
		@current_cart = Cart.find(session[:cart_id])
		@product = Product.find(params[:id])
		@findcartitem = @current_cart.cartitems.where(:product_id => @product)


		if @findcartitem.exists?
			@cartitem.amount = @cartitem.amount + 1
			@cartitem.save
		else
			@cartitem = Cartitem.new()
	    	@cartitem.cart_id = @cart
	    	@cartitem.product_id = @product
	    	@cartitem.price = @product.price
	    	@cartitem.amount = 1
	    	@cartitem.save
	    	session[:cartitems] = @current_cart.cartitems
	    	redirect_to(:controller=> "customers",:action=>"index")
		end 
	end

	def delete_product_from_cart
		
	end

	def cartitem_params
      params.require(:cartitem).permit(:price, :product_id, :amount)
    end
end
