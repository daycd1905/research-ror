$LOAD_PATH << '.'
require "sp.rb"

class Decade
	include Week	
	def no_of_month
		puts Week::FIRST_DAY
		no_of_month = 10 * 12
		puts no_of_month			
	end
end	


d = Decade.new
d.no_of_month