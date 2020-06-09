class Box

	attr_accessor :width, :height

	@@list = []
	def initialize(w, h)
		@width, @height = w, h
		@@list.push self
	end

	#instance method
	def get_area()
		@width * @height
	end


	#class method
	def self.display_info()
		puts "There are #{@@list.length} elements"
	end

	def to_s
		"(w:#{@width}; h:#{height})"
	end

	def +(other)       # Define + to do vector addition
      Box.new(@width + other.width, @height + other.height)
   	end

   def -@           # Define unary minus to negate width and height
      Box.new(-@width, -@height)
   end

   def *(scalar)           # To perform scalar multiplication
      Box.new(@width*scalar, @height*scalar)
   end

   def /(tmp)
   		Box.new(@width/tmp, @height/tmp)
   end
end

class BigBox < Box
	
	#Override
	def get_area()
		@area = @width * @height
		puts "Dien tich la #{@area}"		
	end


end

box1 = Box.new(10, 20)
box2 = Box.new(390, 12)
puts box2.to_s
Box.display_info()

bbox1 = BigBox.new(100, 200)
puts "#{bbox1.get_area()}"


box3 = box1.+box2
box4 = box1.*9
box5 = box1.-@ #???
box6 = box1./2
puts "+other: #{box3.get_area}"
puts "*scalar: #{box4.get_area}"
puts "-@: #{box5.get_area}"
puts "/tmp: #{box6.get_area}"



class Person

  def print_details(*args)
    case args.size
    when 1
      "Hey My Name is #{args[0]}"
    when 2
      "Hey My Name is #{args[0]} and #{args[1]}"
    end
  end

end
