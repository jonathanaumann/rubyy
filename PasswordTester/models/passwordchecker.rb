class PasswordChecker
	attr_accessor :password, :email
	# def initialize(password, email)
	# 	@password = password
	# 	# @email = email
	# end

	def check_password(email, password)
		 @newpassword=password
		 @email = email
		 @useremail= email.split("@")
		 @variableUser=@useremail[0]
		 @variableDomain=@useremail[1]
		 @variableDomain=@variableDomain.slice!(0..(@variableDomain.length-5))
		if
		 	@newpassword.length > 7 &&
		 	@newpassword.match(/\d/) &&
		 	@newpassword.match(/[A-Z]/) &&
		 	@newpassword.match(/\W/) &&
		 	@newpassword.match(/[a-z]/) &&
		 	unless @newpassword.include?(@variableDomain) || @newpassword.include?(@variableUser)
		 		true
		 	end
		 	# @newpassword.exclude?(@variableDomain) &&
		 	# @newpassword.exclude?(@variableUser)

			 true
		 
		else 
			false
		end
	end
end
