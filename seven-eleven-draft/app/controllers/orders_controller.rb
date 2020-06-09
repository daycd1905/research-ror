class OrdersController < ApplicationController
	$LOAD_PATH << '.'
	require './app/services/order_manager/add_order_detail_service.rb'

	# @@detail_hash = Hash.new

	def index

	end

	def new
		@order = Order.new
		@products = Product.all
		@order.order_details.build
		@order.order_details.build
		@order.order_details.build

	end

	def add		
		# @@detail_hash.merge!(order_detail_params) 
		# redirect_to :action => 'new'
	end

	def cart
		# @@detail_hash.find_all
		# @detail_hash = {}
		# @detail_hash.merge!(@@detail_hash)
	end

	def create
		@order = AddOrderDetailService.new(order_detail_params).add
		if @order.present?
			redirect_to :action => 'new'
		end

	end

	def order_detail_params
		params.require(:order).permit(order_details_attributes: [:product_id, :price, :quantity])
	end

end
