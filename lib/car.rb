#lib/car.rb
class Car 
	
	def initialize(type)
		@type = type 
		@cities= []

	end

	def drive
		if @type == "noisy_car"
			puts "BROOOOM"
		end
		if @type == "normal_car"
			puts "broom"
		end
	endfp

	def speed_control 
		puts "how fast are you going?"
		speed= gets.chomp.to_i
		if speed > 100
			puts "damn slow down"
		end
	end

	def travel(city_name)
		@cities.push(city_name)
	end
	def traveled
		puts @cities
	end

end

class Racing_Car < Car

	def drive 
	puts "VROOOOOOMMMMMMMMMMMMMMM"t
	end
end