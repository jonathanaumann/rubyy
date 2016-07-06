class Board
	def initialize

		@peices= [nil, [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]

	end 
	def add_peice(the_peice)
	@peices.push(the_peice)
	end
end