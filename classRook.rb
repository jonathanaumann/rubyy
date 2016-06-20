class Rook < Piece
  def can_move?(final_x, final_y)
    if @x == final_x || @y == final_y
      true
    else
      false
    end
  end
end