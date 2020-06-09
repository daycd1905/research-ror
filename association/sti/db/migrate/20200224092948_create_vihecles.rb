class CreateVihecles < ActiveRecord::Migration[6.0]
  def change
    create_table :vihecles do |t|
    	t.string :color
    	t.float :price
    	t.boolean :purchased, default: false
    	t.string :type, null: false
    end
  end
end
