time = Time.new
=begin
	%a = Sun
	%A = Sunday
	%b = Jan
	%B = January
	%m = 0..12
	%d =  0..31
	%H = 0,.24h
	%M = munites
=end
puts time.strftime("%A, %b/%d/%Y    %H:%M")