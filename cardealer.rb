class Cardealer
	attr_accessor :inventory
	def initialize
		@inventory = {}
	end 
	def add_cars(brand, car)
		@inventory[:brand] = car
	end
	def cars(brand)
		puts @inventory[brand]
	end

	car_dealer = Cardealer.new

	car_dealer.add_cars("Ford", "fiesta")
	car_dealer.add_cars("Ford", "mustang")
	car_dealer.add_cars("Honda", "civic")
	car_dealer.add_cars("Honda", "")



