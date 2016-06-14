def word_sorter(string)
	string.gsub!(/\W+/, " ")
	 array= string.split( ).sort
print array
end
 word_sorter("whats good boss?")