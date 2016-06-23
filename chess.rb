# app.rb

require_relative("peice.rb")

require_relative("Classrook.rb")
require_relative("ClassKing.rb")
require_relative("ClassKnight.rb")


# --------------------------
# --------- Rook -----------
# --------------------------

black_rook_right = Rook.new(8, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

puts "Rook Tests"
p black_rook_right.can_move?(8, 5) == true   # Vertical movement
p black_rook_right.can_move?(4, 8) == true   # Horizontal movement

p white_rook_right.can_move?(8, 5) == true
p white_rook_right.can_move?(2, 1) == true

p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)

p white_rook_right.can_move?(6, 3) == false
p white_rook_right.can_move?(2, 3) == false


puts ""


# --------------------------
# --------- King -----------
# --------------------------

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

puts "King Tests"
p black_king.can_move?(5, 7) == true   # Forward movement
p black_king.can_move?(6, 7) == true   # Diagonal movement

p white_king.can_move?(6, 2) == true
p white_king.can_move?(5, 2) == true
p white_king.can_move?(4, 1) == true

p black_king.can_move?(5, 4) == false
p black_king.can_move?(7, 5) == false

p white_king.can_move?(7, 2) == false
p white_king.can_move?(1, 5) == false
p white_king.can_move?(1, 1) == false


puts ""


# --------------------------
# -------- Knight ----------
# --------------------------

white_knight_right = Knight.new(7, 1, "white")

puts "Knight tests"
p white_knight_right.can_move?(6, 3) == true
p white_knight_right.can_move?(5, 2) == true

p white_knight_right.can_move?(7, 4) == false
p white_knight_right.can_move?(3, 5) == false
p white_knight_right.can_move?(8, 4) == false


#BORED


peices= [nil, [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ] ]

peices[7][1]

my_board = Board.new










