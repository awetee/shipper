class AddRetailerIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :retailer_id, :integer
  end
end
