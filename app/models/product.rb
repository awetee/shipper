class Product < ActiveRecord::Base
	belongs_to :retailer
	# acts_as_shopping_cart_item_for :cart
end
