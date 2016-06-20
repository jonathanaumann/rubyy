class StringCalc
	def add(numbers_string)
nums = numbers_string.split(/[,&]/)


sum = 0
nums.each { |num| sum+=num.to_i }
sum

	end


end

