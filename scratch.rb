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

board = "-" * NUM_SPACES
space = 0

# input = gets.chomp

# (0...NUM_SPACES).each do |i|
while(board.count("-") > 0)

  space = gets.chomp.to_i
  board = claim.(board, space)

  rows = FormatBoard.new.(board)

  rows.each do |row|
    Terminal::Print.(row)
  end

end


