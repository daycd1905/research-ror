class ChangeColumnQuantityProducts < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products, :qauntity, :quantity
  end
end
