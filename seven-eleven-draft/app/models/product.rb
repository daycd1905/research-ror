class Product < ActiveRecord::Base	
	has_one :inventory
	has_many :order_details
	has_many :orders, through: :order_details
	accepts_nested_attributes_for :inventory
end