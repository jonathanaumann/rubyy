def solve_cipher(input, shift)
	result= ""
	array = input.split("")
  for num in array
  	num = num.ord + shift
    result= result + num.chr 
end
   if result== /\W+/
   	num = num.ord + 25
   end





result
end

puts solve_cipher("p| uhdo qdph lv grqdog agxfn", -3)

# should return "hello"