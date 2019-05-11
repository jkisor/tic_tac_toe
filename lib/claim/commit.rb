class Claim

  class Commit

    def call(board, space, shape)
      board[space] = shape
      board
    end

  end

end