class Cart < ActiveRecord::Base
	belongs_to :customer
	has_many :cartitems , :dependent => :destroy
	has_many :products, :through =>:cartitems
end
