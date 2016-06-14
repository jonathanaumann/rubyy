my_range= (1..100).to_a
my_range.each do |student|
result = ""
	if student.to_s[0]== "1"
		result= result + "Bang"
	end
	if student % 3 ==0 
		result= result + "Fizz"
	end
	if student % 5==0 
		result= result + "Buzz"
	end
 
if result == "" 
 puts student
else 
	puts result
end
end