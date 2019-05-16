module Game
  class Play
    class Loop
      class Claim

        def self.build
          new(
            :rules      => Rules.new,
            :next_shape => NextShape.new,
            :commit     => Commit.new
          )
        end

        def initialize(rules:, next_shape:, commit:)
          @rules      = rules
          @next_shape = next_shape
          @commit     = commit
        end

        def call(board, space)
          return board unless @rules.allow?(board, space)

          shape = @next_shape.(board)
          @commit.(board, space, shape)
        end

      end

    end
  end
end