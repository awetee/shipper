class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.column :cart_id, :integer
      	t.timestamps
    end
  end
end
