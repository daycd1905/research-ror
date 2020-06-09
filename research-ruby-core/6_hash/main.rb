proIDArr = ["Banh Khot", "Banh Bo", "Thach Dua", "Banh Da Lon"]

proQuaArr = [100, 200 , 101, 29]



cart = Hash.new { }
for i in 0...4 do 
	cart.store(proIDArr[i], proQuaArr[i])
end

cart.collect
puts cart