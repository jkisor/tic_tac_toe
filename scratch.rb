require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/format_board"
require "./lib/terminal"
require "./lib/board"

require "./lib/show_board"

rules      = Claim::Rules.new
next_shape = Claim::NextShape.new
commit     = Claim::Commit.new

claim = Claim.new(rules, next_shape, commit)

NUM_SPACES = 9

board = Board.new("-" * NUM_SPACES)
space = 0

formatter  = FormatBoard.new
printer    = Terminal::Print
show_board = ShowBoard.new(formatter, printer)


show_board.(board)

while(board.spaces.count("-") > 0)

  space = gets.chomp.to_i
  board = Board.new(claim.(board.data, space))
  show_board.(board)

end


