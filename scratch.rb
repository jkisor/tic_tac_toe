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

require "./lib/game"

NUM_SPACES = 9
board = Board.new("-" * NUM_SPACES)

Game.play(board)
