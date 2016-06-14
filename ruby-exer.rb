class Home
  attr_accessor(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def print_homes(array)
  array.each do |hm|
    puts "#{hm.name}: #{hm.city}, $ #{hm.price}, Capacity #{hm.capacity}"
  end
end


#=============================================================

  nizars = Home.new("Nizar's place", "San Juan", 2, 42)
  fernandos = Home.new("Fernando's place", "Seville", 5, 47)
  joshs = Home.new("Josh's place", "Pittsburgh", 3, 41)
  gonzalos = Home.new("Gonzalo's place", "Málaga", 2, 45)
  ariels = Home.new("Ariel's place", "San Juan", 4, 49)
  jonathans = Home.new("Jonathan's place", "Miami", 6, 60)
 weilis =  Home.new("Wieli's place", "Miami", 1, 25)
  jons = Home.new("Jon's place","Miami", 2, 35)
  gabes = Home.new("Gabe's place", "Miami", 4, 30)
  alia = Home.new("Alia's place", "Miami", 7, 65)

homes = [nizars, fernandos, joshs, gonzalos, ariels, jonathans, weilis, jons, gabes, alia]
input = nil



while input != "exit"
  puts "\nType [list], [price] or [capacity] for different sotings."
  puts "What is your selection?"
  input = gets.chomp
if input == "list"
  homes_by_price =homes.sort_by{ |hm| hm.price}
  print_homes(homes_by_price)
 
elsif input =="price"
  highest_to_lowest= homes.sort {|home_a, home_b| home_b.price <=> home_a.price }
print_homes(highest_to_lowest)
elsif input == "capacity"
  homes_by_capacity =homes.sort_by{ |hm| hm.capacity}
  print_homes(homes_by_capacity)

  
else
  puts "WATTT"
end
    
    
end



#	print home.name 
#	print " in "
#	puts home.city
#	print " Price: $"
#	print home.price 
#	puts " a night"
#end

# cities = homes.map do |hm|
#   hm.city
# end

# capacities = homes.map do |cap| 
# 	cap.capacity
# end
# prices = homes.map do |num| 
# 	num.price
# end
# total_prices = homes.reduce(0.0) do |sum, hm|
#   sum + hm.price
# end

#puts "The average price is:"
#puts total_prices / homes.length


def how_to_sort(array)
puts "How do you want to sort?"
how_to_sort = gets.chomp

if how_to_sort == "price"
	sorted_array = array.sort_by { |element| element.price }


elsif how_to_sort == "capacity"
	sorted_array = array.sort_by { |element| element.capacity }
	end

	array.each do |home|
		puts home.name
	end

end

how_to_sort(homes)

def how_to_sort_cities(array)
	puts"Sort by which cities?"

	how_to_sort_cities= gets.chomp

	 
array.select {|hm| hm.city==how_to_sort_cities}
end
  	
 cities_sorted=  how_to_sort_cities(homes)

cities_sorted.each do |hm|
	puts hm.name
end

def sort_by_exact_price(array)
	puts "what price you want?"
	 sort_by_exact_price= gets.chomp.to_i
array.find do |hm|
  
  hm.price == sort_by_exact_price
end

end
prices_sorted= sort_by_exact_price(homes)

	puts prices_sorted.name





	



