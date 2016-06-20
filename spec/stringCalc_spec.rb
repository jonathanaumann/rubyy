require_relative("../classStringCalc.rb")

RSpec.describe StringCalc do 
	it "returns 0 for the empty string"	 do 
	calc = StringCalc.new

	expect(calc.add("")).to eq(0)
# p the_calc.add("") == 0
	end

	it "returns the number for a single number" do

	calc = StringCalc.new

	expect(calc.add("7")).to eq(7)
	# p the_calc.add("9") == 9
	end

	it "returns the numbers added up for two numbers" do 
		calc = StringCalc.new

	expect(calc.add("7,1")).to eq(8)
	# p the_calc.add("5,7") == 12
# p the_calc.add("4,3") == 7
	end
	it "returns the numbers added up for two numbers w/ an &" do
		calc = StringCalc.new

	expect(calc.add("7&1")).to eq(8)

# p the_calc.add("5&7") == 12
# p the_calc.add("4&3") == 7
	end
	it "returns the numbers added up for more than 2 numbers" do
		calc = StringCalc.new

	expect(calc.add("5,7,10")).to eq(22)


# p the_calc.add("5,7,10") == 22
# p the_calc.add("4,3,20") == 27
	end
it "returns the numbers added up for more than 2 numbers w/ an &" do
		calc = StringCalc.new

	expect(calc.add("5&7,10")).to eq(22)


# p the_calc.add("5&7,10") == 22
# p the_calc.add("4,3&20") == 27
	end
end





