module Game

  class Play

    def initialize(start_game:, play_round:, end_game:)
      @start_game = start_game
      @play_round = play_round
      @end_game   = end_game
    end

    def call

      board = @start_game.()

      while(board.has_empty_spaces?)
        board = @play_round.(board)
      end

      @end_game.()

    end

  end

end