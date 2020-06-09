class User < ActiveRecord::Base
	has_many :likes
	has_many :products, through: :likes	
end