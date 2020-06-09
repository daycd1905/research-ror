class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    	t.string :name
    	t.integer :qauntity
    	t.integer :category_id
    end
  end
end
