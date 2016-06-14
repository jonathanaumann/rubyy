
my_range= (1..100).to_a
my_range.each do |student|
	if 	student.to_s[0]== "1" && student % 3 ==0 && student % 5 ==0
		puts "BangFizzBuzz"
	elsif student.to_s[0]== "1" && student % 3 == 0
		puts "BangFizz"	
	elsif student.to_s[0]== "1" && student % 5== 0 
		puts "BangBuzz"
	elsif student % 3 == 0 && student % 5 == 0 
		puts "FizzBuzz"
	elsif student % 3 ==0 
		puts "Fizz"
	elsif student % 5==0 
		puts "Buzz"
	elsif student.to_s[0]== "1"
		puts "Bang"
	else 
		puts student
	end
end 