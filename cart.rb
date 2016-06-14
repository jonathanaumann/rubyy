class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
  	@items.push(item)
  end


	def checkout
		checkout= 0
		if @items.size < 5
  	@items.each do |item|
			checkout += item.price
			end
		else 
			@items.each do |item|
				checkout += item.price - (checkout/10)
			end

		end
		checkout
	end

end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
  	@price
      
  end 
end

class Houseware < Item
  def price
      if @price > 100
      	@price - (@price*5/100)
      else
      	@price
      end
  end

end

class Fruit < Item
  def price
     today = Date.today
	if today.saturday? || today.sunday? 
	@price - (@price/10)
	else
	@price

  	end
  end
end


jons_cart = ShoppingCart.new

banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

jons_cart.add_item(oj)
jons_cart.add_item(rice)
jons_cart.add_item(oj)
jons_cart.add_item(vaccuum)
jons_cart.add_item(rice)


jons_cart.checkout



puts jons_cart.checkout
