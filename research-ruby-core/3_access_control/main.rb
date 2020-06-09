class Pet
	attr_accessor :name, :color, :bod

	def initialize(n, c, b)
		@name = n
		@color = n
		@bod = b		
	end

	def to_s
		"(name: #{@name}; color: #{@color}; bod: #{bod})"		
	end
end

class Dog < Pet
	def bark
		puts "Kikikikikikikiki"
	end
end

class Cat < Pet
	def khe
		puts "gaugaugaugau"
	end
end

huski = Dog.new("Tran Dan", "black", "2012")
alaska = Cat.new("Ban", "yellow", "2018")

puts "#{huski.to_s}"
puts "#{alaska.to_s}"
