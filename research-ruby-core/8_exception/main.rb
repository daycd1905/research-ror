begin
   file = open("2211.txt")
   if file
      puts "File opened successfully"
   end
rescue   
   retry
end

puts puts


begin  
   puts 'I am before the raise.'  
   raise 'An error has occurred.' 
    #..raise exception 
   puts 'I am after the raise.'  
rescue Exception => e
	# .. handle error
   puts e.message  
   puts e.backtrace.inspect  
else    
	#.. executes if there is no exception
   puts "Congratulations-- no errors!" 
ensure
	#.. finally ensure execution
    #.. This will always execute.
   puts "Ensuring execution"
end  
puts 'I am after the begin block.'  



def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Some thing error")