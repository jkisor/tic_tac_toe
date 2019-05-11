class Claim
  class NextShape
    
    def call(board)
      (board.count("X") > board.count("O")) ? "O" : "X"
    end

  end
end