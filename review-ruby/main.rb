def check(num)
	count = 0
	
	for i in 1..num
		if(num % i == 0)
			count += 1
		end
	end

	if count == 2
		return true
	else 
		return false
	end
end


def songuyento(params)
	d = params.length

	for i in 0..d do
		tmp = params[i]
		if check(tmp)
			puts "#{params[i]}"			
		end
	end	
end

a = [3,4,4,6,7]


songuyento(a)