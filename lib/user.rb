
require_relative("WordCount.rb")

class User
 def initialize
		@username = "jon8998"
		@password = "jonathan"
 end

 def login
	puts "Please log in to use"
	puts "Username:"
	username= gets.chomp
	puts "Password:"
	password= gets.chomp
	if  username == @username && password == @password
	puts "Hello, #{username}!"
	counter= WordCount.new
	counter.use
	else 
		puts "INCORECT LEAVE NOW OR BE SUED"
	end 
 end
end

 


