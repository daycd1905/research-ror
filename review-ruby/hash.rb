a = {a: 1, b: 3, d: 9}
b = {a: 2, c: 8}

#print out 
a.each do |key, value|
	puts "#{key}: #{value}"
end

#merge without check key
a.merge(b)