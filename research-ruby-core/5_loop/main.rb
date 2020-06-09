def check_prime_number(num)
	flag = false
	count = 0
	tmp = num / 2
	for i in 1..num
		if num % i == 0
			count += 1
		end
	end
	if count == 2
		flag = true
	end

	return flag
end


def input
	begin	
			print "Input end number to find prime: "
			num = gets.chomp.to_i
			flag = check_prime_number(num)
			puts "#{flag}"

			tmp = []			
			while(num != 0)
				tmp.push(num % 10)
				num = num / 10		
					
			end

			tmp.reverse.each do |i|
				puts i
			end
			
			tmp = gets.chomp
	end	until tmp == 'n'
end

input
