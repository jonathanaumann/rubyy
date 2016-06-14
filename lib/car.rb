#lib/car.rb
class Car 
	attr_reader :type
	def initialize 
		@type = type 

	end

	def drive
		if type == "noisy_car"
			puts "BROOOOM"
		end
		if type == "normal_car"
			puts "broom"
		end
	end

	def speed_control 
		puts "how fast are you going?"
		speed= gets.chomp.to_i
		if speed > 100
			puts "damn slow down"
		end
	end

end