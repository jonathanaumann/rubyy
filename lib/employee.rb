require_relative("designer.rb")
require_relative("programmer.rb")


class Employee
	def consume_caffeine
		puts "Drinking coffeeeee yumm"
	end
end

module Payable 
	def receive_salary
		puts "you got ur hardworked money"
	end
end