class Bishop < Piece
	def can_move?(final_x, final_y)
		change_x = (final_x - @x).abs
		change_y = (final_y - @y).abs

		if change_y == change_x
			true
		else
			false

		end
	end
end
