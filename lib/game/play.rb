module Game

  class Play

    def self.build
      new(
        :start_game => Start.build, 
        :play_round => Loop.build, 
        :end_game   => End.build
      )
    end

    def initialize(start_game:, play_round:, end_game:)
      @start_game = start_game
      @play_round = play_round
      @end_game   = end_game
    end

    def call

      board = @start_game.()

      while(board.done?)
        board = @play_round.(board)
      end

      @end_game.()

    end

  end

end