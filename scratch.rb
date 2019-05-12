require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/format_board"
require "./lib/terminal"
require "./lib/board"

require "./lib/show_board"
require "./lib/play_round"

require "./lib/start_game"
require "./lib/end_game"

require "./lib/play_game"

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
  StartGame.new(show_board)
end

def end_game
  printer = Terminal::Print

  EndGame.new(printer)
end

NUM_SPACES = 9
board = Board.new("-" * NUM_SPACES)

###
play_game = PlayGame.new(start_game, play_round, end_game)
play_game.(board)


