print "input age: "
age = gets.chomp.to_i

$test = age
case $test
when 0...5
	puts "O nha"
when 5
	puts "Mau Giao"
when 6..10
	puts "Cap 1"
when 11..14
	puts "Cap 2"
when 16..18
	puts "Cap 3"
when 18..1000
	puts "ai biet"
		
end


puts puts

print "input number: "
num = gets.chomp.to_i
if (num % 2 == 0)
	puts "So Chan"
else 
	puts "So le"
	
end
