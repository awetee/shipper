class Product < ActiveRecord::Base
	belongs_to :retailer
	has_many :cartitems
	has_many :carts, :through => :cartItems
end
