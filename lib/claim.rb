class Claim

  def initialize(rules, determine_shape, commit)
    @rules  = rules
    @determine_shape = determine_shape
    @commit = commit
  end

  def call(board, space)
    return board unless @rules.allow?(board, space)

    shape = @determine_shape.(board)
    @commit.(board, space, shape) 
  end

end