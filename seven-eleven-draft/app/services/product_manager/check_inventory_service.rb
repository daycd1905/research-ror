class CheckInventoryService < ApplicationService

	def initialize

	end

	def check
		# @products = Product.where(id: Inventory.where(:quantity < 3).select(:product_id))
		@products = Product.find_by_sql("
			SELECT p.id, p.name, p.price, i.quantity FROM products p, inventories i
			WHERE p.id = i.product_id AND i.quantity <= 2")
		return @products		
	end

end