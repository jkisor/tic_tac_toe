class Claim

  def initialize(rules, determine_shape, commit)
    @rules  = rules
    @determine_shape = determine_shape
    @commit = commit
  end


  def call(board, space)
    return board unless @rules.allow?(board, space)
    @determine_shape.(board)
    @commit.(board, space) 
  end

end