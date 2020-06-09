str = "acaaaaaaccab"
tmp = {}

str.split("").each do |i|
	char = str[i]
	next tmp[char] = 1 if tmp[char] == nil
	next tmp[char] += 1 if tmp[char] 
end
puts tmp

temp = tmp

puts temp.select{|key, value| value > 1}



# puts temp 