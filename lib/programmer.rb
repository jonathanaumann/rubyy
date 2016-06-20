require_relative("designer.rb")
require_relative("programmer.rb")


class Programmer < Employee
	include Payable
	def program
		consume_caffeine
		do_crazy_code
		recieve_salary
	end
	def do_crazy_code
			puts "TYPEEEEE CODEYCODE"
	end
end
