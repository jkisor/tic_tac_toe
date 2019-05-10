class Claim

  def initialize(rules, commit)
    @rules  = rules
    @commit = commit
  end


  def call(board, space)
    return board unless @rules.allow?
    
    @commit.(board, space) 
  end

end