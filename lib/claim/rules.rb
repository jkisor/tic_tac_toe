class Claim
  class Rules
    EMPTY_SPACE = "-"

    def allow?(board, space)
      board.chars[space] == EMPTY_SPACE
    end

  end

end
