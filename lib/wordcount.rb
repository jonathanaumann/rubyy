class WordCount
	def use
		puts "type some text to count the number of words"
		sentence = gets.chomp
		puts sentence.split.size
	end
end
