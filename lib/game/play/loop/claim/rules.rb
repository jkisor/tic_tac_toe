module Game
  class Play
    class Loop
      class Claim

        class Rules
          EMPTY_SPACE = "-"

          def allow?(board, space)
            board.spaces[space] == EMPTY_SPACE
          end

        end
      end
    end
  end
end
