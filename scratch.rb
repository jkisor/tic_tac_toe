require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/format_board"
require "./lib/terminal"

rules      = Claim::Rules.new
next_shape = Claim::NextShape.new
commit     = Claim::Commit.new

claim = Claim.new(rules, next_shape, commit)

NUM_SPACES = 9

board = Board.new("-" * NUM_SPACES)
space = 0

def show_board(board)
  rows = FormatBoard.new.(board)

  rows.each do |row|
    Terminal::Print.(row)
  end
end

show_board(board)

while(board.count("-") > 0)

  space = gets.chomp.to_i
  board = claim.(board.data, space)
  show_board(board)

end


