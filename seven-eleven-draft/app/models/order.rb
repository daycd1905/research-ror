class Order < ActiveRecord::Base
	has_many :order_details, dependent: :destroy
	has_many :products, through: :order_details
	accepts_nested_attributes_for :products
	accepts_nested_attributes_for :order_details, allow_destroy: true

end