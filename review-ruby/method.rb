def sum(a  = [])
	result = 0
	# a.each do |i|
	# 	result += i
	# end
	d = a.length
	for i in 0...d
		result += a[i]
	end
	return result
end

a = sum([10, 9])
puts "#{a}"