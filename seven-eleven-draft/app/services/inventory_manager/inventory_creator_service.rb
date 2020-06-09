class InventoryCreatorService < ApplicationService
	
	def self.add_quantity(params)
		quantity = params[:quantity]
	    @inventory = Inventory.find(params[:id])
		if(@inventory.present?)			
			Inventory.new(quantity: quantity)		
		end
	end

end