class Claim

  class Commit

    def call(board, space, shape)

      board.dup.tap do |new_board|
        new_board[space] = shape
      end

    end

  end

end