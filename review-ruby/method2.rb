class MyClass 
  attr_accessor :string_1, :string_2
  def initialize(string_1: {}, string_2: {})
    @string_1 = string_1 
    @string_2 = string_2
  end
end

a = MyClass.new(string_2: "bar")
puts a.string_1
puts a.string_2
# puts a.string_1 + " " + a.string_2 
#=> "foobar"
