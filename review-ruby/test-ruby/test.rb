
def check(num)
	flag = false
	tmp = Math.sqrt(num)
	if(tmp * tmp == num)
		flag = true
	end
	return flag 
end

def sochinhphuong(a = [])

	d = a.length
	for i in 0...d do	
		if(a[i] == nil)
			next
		elsif(check(a[i]))
			puts "#{a[i]}"
		end
	end
end

a = [nil,4,7,1,nil,36]

sochinhphuong(a)
