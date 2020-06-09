$LOAD_PATH << '.'
require 'module_person.rb'

class User
	include Person
	def name
		puts "Name: User"
		
	end
end

User.new.name