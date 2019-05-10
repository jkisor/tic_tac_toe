class Claim

  def initialize(rules, commit)
    @rules  = rules
    @commit = commit
  end


  def call(board, space)
    
    if @rules.allow?
      @commit.(board, space) 
    else
      board
    end
    
  end

end