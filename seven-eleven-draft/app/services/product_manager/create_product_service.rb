
class CreateProductService < ApplicationService
	attr_accessor :name, :price
	attr_reader :id

	def initialize(params = {})
		@name = params[:name]
		@price = params[:price]		
	end

	def create
		@product = Product.new(name: @name, price: @price)
		if @product.save
			@inventory = Inventory.new(product: @product, quantity: 0)
			@inventory.save
			return @product			
		end
	end

end
