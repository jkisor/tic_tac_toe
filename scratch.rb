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

get_input = Terminal::GetInput


def play_round(board, get_input, claim, show_board)
  space = get_input.()
  board = claim.(board, space)
  show_board.(board)
end

while(board.has_empty_spaces?)
  play_round(board, get_input, claim, show_board)
end


