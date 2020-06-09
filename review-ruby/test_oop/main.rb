$LOAD_PATH << '.'
require "module_example.rb"

class Animal
	# include ModuleExample
	# prepend ModuleExample
	extend ModuleExample
	attr_writer :name

	attr_accessor :color, :speed, :type

	def initialize(n, c ,s, t)
		@name, @color, @speed, @type  = n, c, s, t
	end

	def display_info
		puts "My name is #{@name}, with #{@color}"
	end

	def print_name
		puts "To la con cho"
	end

	def move
		puts "Max speed is: #{@speed}"
		move_dog
	end

	# def to_s
	# 	("name: #{@name}, color: #{@color}, speed: #{@speed}, type: #{@type}")
	# end
end



class Dog < Animal
	attr_accessor :dob

	def initialize(n, c, s, t, y)
		super(n, c, s, t)
		@dob = y
	end
#chinh
	def move_dog	
		puts "Type: #{@type}"		
	end

	def to_s
		("Name: #{@name}, Color: #{@color}, Speed: #{@speed}, Type: #{@type}, DOB: #{@dob}")
	end
end

class Cat < Animal
	def display_info
		puts "Toi ten la: #{@name}"
	end
end

puts "Questons: "
puts "1. Continue code in super class method"
puts "2. Dog have new attribute"
puts "3. Example of attr"
puts "4. Example of module"

puts 

puts "-----General example  of OOP-----"
chihuahua = Dog.new("Chi Hua Hua", "black", 40, "Japan", "2019")
chihuahua.display_info
puts chihuahua.dob
meo = Cat.new("Oggy", "blue", 60, "US")
meo.display_info
chihuahua.move

puts puts

puts "-----Example of attr_-----"
# puts "Display name of cat: #{meo.name}"
puts "Modify name"
chihuahua.name = "Con Cho"
# puts "Display name of dog: #{chihuahua.name}"


puts puts

puts "----- Example of module -----"
Dog.print_name

# puts chihuahua.to_s
