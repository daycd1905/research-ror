class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
    	t.belongs_to :product
    	t.integer :quantity

    	t.timestamps
    end
  end
end
