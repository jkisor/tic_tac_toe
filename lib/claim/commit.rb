class Claim

  class Commit

    def call(board, space, shape)
      board.data[space] = shape
      board
    end

  end

end