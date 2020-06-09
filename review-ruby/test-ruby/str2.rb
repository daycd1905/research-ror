str = "aapwp123pllasd"
tmp = ""


str.split("").each_index do |i|
	tmp << str[i] if (str[i] == str[i+1])
end

puts tmp
