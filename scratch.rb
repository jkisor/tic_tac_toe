require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/format_board"
require "./lib/terminal"
require "./lib/board"

require "./lib/show_board"
require "./lib/play_round"

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

get_input = Terminal::GetInput

play_round = PlayRound.new

###

show_board.(board)

while(board.has_empty_spaces?)
  play_round.(board, get_input, claim, show_board)
end


