class AddOrderDetailService < ApplicationService

	attr_accessor :params

	def initialize(params = {})
		@params = params
	end

	def add
		@order = Order.new(params)
		if @order.save
			return @order		
		end
	end
end