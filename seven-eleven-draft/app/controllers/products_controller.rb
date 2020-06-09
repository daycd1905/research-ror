class ProductsController < ApplicationController
	$LOAD_PATH << '.'
	require './app/services/product_manager/create_product_service.rb'
	require './app/services/product_manager/update_product_service.rb'
	require './app/services/product_manager/check_inventory_service.rb'

	def index
		@products = Product.all		
		@inventories_check = CheckInventoryService.new.check
		
		# if @inventories_check.present?
		# 	render html: "<script>alert('Nhap hang')</script>".html_safe
		# end
	end

	def new
		@product = Product.new			
	end

	def import
		@product_imports = CheckInventoryService.new.check
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])		
	end

	def update		
		a = UpdateProductService.new(params[:id].to_i, product_params).update		
		if a
			redirect_to :action => 'index'
		else
			render :action => 'index'
		end
	end


	def create
		@product = CreateProductService.new(product_params).create
		if @product.present?
			redirect_to :action => 'index'
		else
			render :action => 'new'
		end
	end

	def product_params 
		params.require(:product).permit(:name, :price, inventory_attributes: [:id, :quantity])
	end
end