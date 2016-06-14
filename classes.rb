
class ShakeShop
	def initialize
      @MilkShakes = [ ]
  	end

  	def add_MilkShake(milkshake)
  		@MilkShakes.push(milkshake)
  	end

  	def total_checkout
  		total_checkout = 1

  		@MilkShakes.each do |milkShake|
			total_checkout += milkShake.total_price_of_milkshake
		end
		total_checkout
	end

end
		


class MilkShake
	def initialize
		@base_price = 3
		@ingredients = [ ]    
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def total_price_of_milkshake
		total_price_of_milkshake = @base_price

		#Add each ingredients price to our total
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end

		#return  our total price to whoever called for it
		total_price_of_milkshake
	end
end
class Ingredient
	attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end





nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)


puts nizars_milkshake.total_price_of_milkshake


jons_Shake =ShakeShop.new

jons_Shake.add_MilkShake(nizars_milkshake)

puts jons_Shake.total_checkout


