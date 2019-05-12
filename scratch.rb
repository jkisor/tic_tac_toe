require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/format_board"
require "./lib/terminal"
require "./lib/board"

require "./lib/show_board"
require "./lib/play_round"

def play_round
  PlayRound.new(
    Terminal::GetInput, 
    claim, 
    show_board
  )
end

def claim
  rules      = Claim::Rules.new
  next_shape = Claim::NextShape.new
  commit     = Claim::Commit.new

  Claim.new(rules, next_shape, commit)
end

def show_board
  formatter  = FormatBoard.new
  printer    = Terminal::Print

  ShowBoard.new(formatter, printer)
end

def start_game
  lambda do |show_board, board|
    show_board.(board)
  end
end

end_game = lambda do |printer|
  printer.("Game over. Thanks for playing.")
end

NUM_SPACES = 9
board = Board.new("-" * NUM_SPACES)

###

start_game.(show_board, board)

while(board.has_empty_spaces?)
  play_round.(board)
end

end_game.(Terminal::Print)


