module Game
  class Play
    class Loop
      class Claim

        class NextShape

          def call(board)
            (board.spaces.count("X") > board.spaces.count("O")) ? "O" : "X"
          end

        end
      end
    end
  end
end