class Room 
		attr_accessor :name
	def initialize(name, exit_direction, next_room, message)

		@name = name
		@exit_direction = exit_direction
		@next_room = next_room
		@message = message 
	end
	def current_room
		if @exit_direction != nil
			input= nil
			while input != "exit"
			
			puts @message
			puts ">"
				input = gets.chomp
				if input == @exit_direction
					puts "You just left the room alive, you are now in #{@next_room.name}!!"
						@next_room.current_room
						break
				else 
					puts "Either it can't be done or you went the wrong way and died."	
					input = "exit"	
				end 	
			end
		end
	end
end