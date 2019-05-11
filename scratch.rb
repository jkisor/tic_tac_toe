require "./lib/claim"
require "./lib/claim/rules"
require "./lib/claim/next_shape"
require "./lib/claim/commit"

rules = Claim::Rules.new
next_shape = Claim::NextShape.new
commit = Claim::Commit.new

claim = Claim.new(rules, next_shape, commit)

board = "-" * 9
space = 0

puts claim.(board, 0)