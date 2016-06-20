
require_relative("programmer.rb")
require_relative("employee.rb")

class Designer < Employee
	include Payable
	def design_things
	consume_caffeine
	select_typography
	select_colors
	end
	def select_typography
	puts " selct times "
	end
	def select_colors 
		puts "You selcted the right colors"
	end
end
