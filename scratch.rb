require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

require "./lib/terminal"

rules      = Claim::Rules.new
next_shape = Claim::NextShape.new
commit     = Claim::Commit.new

claim = Claim.new(rules, next_shape, commit)

NUM_SPACES = 9

board = "-" * NUM_SPACES
space = 0

(0...NUM_SPACES).each do |i|
  text = claim.(board, i)
  
  Terminal::Clear.()
  Terminal::Print.(text)
end


