require_relative("room.rb")

room5 = Room.new("room5", nil, nil, "YEET You made it to the roof the choopa is waiting your free")
room4 = Room.new("room4", "N", room5, "Room4 is an elevator, you can only go N or S. \nThe bottom floor says na they top floor says yeet.\n What should you do?")
room3 = Room.new("room3", "W", room4, "In this room you can clearly see now and you also here noises! \nFrom the S you here heavy metal music, and from the W you hear elevator music. \nWhat should you do?" )
room2 = Room.new("room2", "S", room3, "This room is a little lighter, now you see green lights coming from S and red light from the N. \nWhat should you do?")
room1 = Room.new("room1", "E", room2, "This is the first room, Its dark and scary. There could be anything outthere. \nYou only see light coming from E what should you do?")










room1.current_room





















# puts "You're in a dark room. there is a door north"
# input = nil
# while input != "exit"
# 	puts ">"
# 	input = gets.chomp
# 	if input == "N"
# 		put "you just walked into a new mysterious room. There is a battery and gum on the floor as well as a unlit torch. " 
# 	else
# 		put "na there aint a door there"
# 	end 
# end

# puts "this room is pretty dark, no exits visible. What should you do?"
# input2 = nil
# while input2 != "exit"
# 	puts ">"
# 	input2 = gets.chomp
# 	if input2 == "pick up items"
# 		puts "you just picked up the items."
# 	elsif input2 == "S"
# 		puts "you just went back into the first room. WHY?"
			
# 	else
# 		puts "you cant do that, there is barely any light. try and fix that"
# 	end
# end
# puts "what should you do with the items"
# input2 = nil
# while input2 != "exit"
# 	puts ">"
# 	input2 = gets.chomp
# 	if input2 == "pick up items"
# 		puts "you just picked up the items."
# 	else
# 		puts "you cant do that, there is barely any light. try and fix that"
# 	end
# end

