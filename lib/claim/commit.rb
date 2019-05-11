class Claim

  class Commit

    def call(board, space)
      board[space] = "X"
      board
    end

  end

end