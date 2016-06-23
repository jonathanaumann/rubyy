class MemorySaver
 def save(number)
 IO.write("memory.txt", number)
 end

 def load
	 if File.exists? ("memory.txt")
	 number= IO.read("memory.txt")
	 number.to_i
	 else
	 nil
	  end
	end
end 
