require "sinatra"
require "sinatra/reloader"




require_relative("models/passwordchecker.rb")
 
pass = PasswordChecker.new.check_password("j@hot.com", "Lmao$0000")




Get "/" do  
	erb(:home)
end 

