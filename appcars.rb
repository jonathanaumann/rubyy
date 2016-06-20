require_relative("lib/van.rb")
require_relative("lib/sports_car.rb")
require_relative("lib/motorcycle.rb")


class WheelCounter
	def initialize
		@cars= []
	end
	def add_cars_to_count(car)
	@cars.push(car)
	end

	def wheelsnumber
 		sum = 0
 	@cars.each do |car| 
 		sum += car.wheels
 		end
 		p sum
 	end
 	
 end

 class Noises
 	def initialize 
 		@cars = []
 	end
 	def add_cars_to_rev(car)
 		@cars.push(car)
 	end
 	def noises
 		@cars.each do |car|
 			puts car.noise
 		end 
 	end
 end


total_wheels =WheelCounter.new

total_wheels.add_cars_to_count(Van.new)
total_wheels.add_cars_to_count(Sportscar.new)
total_wheels.add_cars_to_count(Motorcycle.new)

total_wheels.wheelsnumber

total_noise= Noises.new

total_noise.add_cars_to_rev(Van.new)
total_noise.add_cars_to_rev(Sportscar.new)
total_noise.add_cars_to_rev(Motorcycle.new)

total_noise.noises


