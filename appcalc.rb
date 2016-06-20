require_relative("classStringCalc.rb")

the_calc = StringCalc.new

p the_calc.add("") == 0
p the_calc.add("9") == 9
p the_calc.add("5,7") == 12
p the_calc.add("4,3") == 7

p the_calc.add("5&7") == 12
p the_calc.add("4&3") == 7

p the_calc.add("5,7,10") == 22
p the_calc.add("4,3,20") == 27

p the_calc.add("5&7,10") == 22
p the_calc.add("4,3&20") == 27
