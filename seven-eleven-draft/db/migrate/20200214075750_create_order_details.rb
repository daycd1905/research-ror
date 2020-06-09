class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
    	t.references :order, index: true
    	t.references :product, index: true
    	t.float :price
    	t.integer :quantity
    end
  end
end
