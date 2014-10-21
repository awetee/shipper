class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cartitems do |t|
      t.column :cart_item_id, :integer
      t.column :product_id, :integer 
      t.column :cart_id, :integer 
      t.column :price, :float 
      t.column :amount, :integer
      t.timestamps
    end
  end
end
